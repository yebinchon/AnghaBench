
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_trigger {int dummy; } ;
struct iio_dev {int modes; } ;


 int EINVAL ;
 int INDIO_HARDWARE_TRIGGERED ;

__attribute__((used)) static int stm32_lptim_validate_device(struct iio_trigger *trig,
           struct iio_dev *indio_dev)
{
 if (indio_dev->modes & INDIO_HARDWARE_TRIGGERED)
  return 0;

 return -EINVAL;
}
