Fs = 2048;                   % samples per second
dt = 1/Fs;                   % seconds per sample
StopTime = 1;                % seconds
t = (0:dt:StopTime-dt)';     % seconds
%% Sine wave:
title('Combine Plots')
Fc = [3 10 8 100 5];
amp = [2, 1, 10, 1, 1];
x_axis = 0:1:2047;
result = zeros(2048, 1);
for n = 1:5
    y = amp(n) * sin(2*pi*Fc(n)*t);
    result = result + y;
end

y_fft = (dft(result));
subplot(3, 1, 1);
plot(x_axis, result);
subplot(3, 1, 2);
plot(x_axis, y_fft);