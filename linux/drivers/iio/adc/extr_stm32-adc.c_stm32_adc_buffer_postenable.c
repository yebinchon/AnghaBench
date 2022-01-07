
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;


 int __stm32_adc_buffer_postenable (struct iio_dev*) ;
 int iio_triggered_buffer_postenable (struct iio_dev*) ;
 int iio_triggered_buffer_predisable (struct iio_dev*) ;

__attribute__((used)) static int stm32_adc_buffer_postenable(struct iio_dev *indio_dev)
{
 int ret;

 ret = iio_triggered_buffer_postenable(indio_dev);
 if (ret < 0)
  return ret;

 ret = __stm32_adc_buffer_postenable(indio_dev);
 if (ret < 0)
  iio_triggered_buffer_predisable(indio_dev);

 return ret;
}
