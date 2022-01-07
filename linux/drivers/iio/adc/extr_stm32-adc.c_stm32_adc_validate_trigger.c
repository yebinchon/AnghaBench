
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_trigger {int dummy; } ;
struct iio_dev {int dummy; } ;


 int EINVAL ;
 scalar_t__ stm32_adc_get_trig_extsel (struct iio_dev*,struct iio_trigger*) ;

__attribute__((used)) static int stm32_adc_validate_trigger(struct iio_dev *indio_dev,
          struct iio_trigger *trig)
{
 return stm32_adc_get_trig_extsel(indio_dev, trig) < 0 ? -EINVAL : 0;
}
