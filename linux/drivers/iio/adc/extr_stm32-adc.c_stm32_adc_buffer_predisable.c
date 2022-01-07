
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dev; } ;


 int __stm32_adc_buffer_predisable (struct iio_dev*) ;
 int dev_err (int *,char*) ;
 int iio_triggered_buffer_predisable (struct iio_dev*) ;

__attribute__((used)) static int stm32_adc_buffer_predisable(struct iio_dev *indio_dev)
{
 int ret;

 __stm32_adc_buffer_predisable(indio_dev);

 ret = iio_triggered_buffer_predisable(indio_dev);
 if (ret < 0)
  dev_err(&indio_dev->dev, "predisable failed\n");

 return ret;
}
