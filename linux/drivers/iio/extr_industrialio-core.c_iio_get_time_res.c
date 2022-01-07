
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;


 int BUG () ;







 unsigned int LOW_RES_NSEC ;
 unsigned int hrtimer_resolution ;
 int iio_device_get_clock (struct iio_dev const*) ;

unsigned int iio_get_time_res(const struct iio_dev *indio_dev)
{
 switch (iio_device_get_clock(indio_dev)) {
 case 130:
 case 133:
 case 131:
 case 134:
 case 128:
  return hrtimer_resolution;
 case 129:
 case 132:
  return LOW_RES_NSEC;
 default:
  BUG();
 }
}
