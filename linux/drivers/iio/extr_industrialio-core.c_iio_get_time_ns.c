
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec64 {int dummy; } ;
struct iio_dev {int dummy; } ;
typedef int s64 ;


 int BUG () ;







 int iio_device_get_clock (struct iio_dev const*) ;
 int ktime_get_boottime_ns () ;
 int ktime_get_clocktai_ns () ;
 int ktime_get_coarse_real () ;
 int ktime_get_coarse_ts64 (struct timespec64*) ;
 int ktime_get_ns () ;
 int ktime_get_raw_ns () ;
 int ktime_get_real_ns () ;
 int ktime_to_ns (int ) ;
 int timespec64_to_ns (struct timespec64*) ;

s64 iio_get_time_ns(const struct iio_dev *indio_dev)
{
 struct timespec64 tp;

 switch (iio_device_get_clock(indio_dev)) {
 case 130:
  return ktime_get_real_ns();
 case 133:
  return ktime_get_ns();
 case 131:
  return ktime_get_raw_ns();
 case 129:
  return ktime_to_ns(ktime_get_coarse_real());
 case 132:
  ktime_get_coarse_ts64(&tp);
  return timespec64_to_ns(&tp);
 case 134:
  return ktime_get_boottime_ns();
 case 128:
  return ktime_get_clocktai_ns();
 default:
  BUG();
 }
}
