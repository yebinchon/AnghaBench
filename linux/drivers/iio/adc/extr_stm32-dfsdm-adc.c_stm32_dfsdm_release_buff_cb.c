
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_dfsdm_adc {int * cb_priv; int * cb; } ;
struct iio_dev {int dummy; } ;


 int EINVAL ;
 struct stm32_dfsdm_adc* iio_priv (struct iio_dev*) ;

int stm32_dfsdm_release_buff_cb(struct iio_dev *iio_dev)
{
 struct stm32_dfsdm_adc *adc;

 if (!iio_dev)
  return -EINVAL;
 adc = iio_priv(iio_dev);

 adc->cb = ((void*)0);
 adc->cb_priv = ((void*)0);

 return 0;
}
