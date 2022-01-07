
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec64 {int dummy; } ;
struct ina2xx_chip_info {int allow_async_readout; } ;
struct iio_dev {int dummy; } ;
typedef int s64 ;


 int SAMPLING_PERIOD (struct ina2xx_chip_info*) ;
 int div_s64 (int ,int) ;
 struct ina2xx_chip_info* iio_priv (struct iio_dev*) ;
 int ina2xx_conversion_ready (struct iio_dev*) ;
 int ina2xx_work_buffer (struct iio_dev*) ;
 int kthread_should_stop () ;
 int ktime_get_ts64 (struct timespec64*) ;
 int timespec64_add_ns (struct timespec64*,int) ;
 struct timespec64 timespec64_sub (struct timespec64,struct timespec64) ;
 int timespec64_to_ns (struct timespec64*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int ina2xx_capture_thread(void *data)
{
 struct iio_dev *indio_dev = data;
 struct ina2xx_chip_info *chip = iio_priv(indio_dev);
 int sampling_us = SAMPLING_PERIOD(chip);
 int ret;
 struct timespec64 next, now, delta;
 s64 delay_us;





 if (!chip->allow_async_readout)
  sampling_us -= 200;

 ktime_get_ts64(&next);

 do {
  while (!chip->allow_async_readout) {
   ret = ina2xx_conversion_ready(indio_dev);
   if (ret < 0)
    return ret;





   if (ret == 0)
    ktime_get_ts64(&next);
   else
    break;
  }

  ret = ina2xx_work_buffer(indio_dev);
  if (ret < 0)
   return ret;

  ktime_get_ts64(&now);







  do {
   timespec64_add_ns(&next, 1000 * sampling_us);
   delta = timespec64_sub(next, now);
   delay_us = div_s64(timespec64_to_ns(&delta), 1000);
  } while (delay_us <= 0);

  usleep_range(delay_us, (delay_us * 3) >> 1);

 } while (!kthread_should_stop());

 return 0;
}
