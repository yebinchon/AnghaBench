
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_dfsdm_adc {int (* cb ) (void const*,size_t,void*) ;void* cb_priv; } ;
struct iio_dev {int dummy; } ;


 int EINVAL ;
 struct stm32_dfsdm_adc* iio_priv (struct iio_dev*) ;

int stm32_dfsdm_get_buff_cb(struct iio_dev *iio_dev,
       int (*cb)(const void *data, size_t size,
          void *private),
       void *private)
{
 struct stm32_dfsdm_adc *adc;

 if (!iio_dev)
  return -EINVAL;
 adc = iio_priv(iio_dev);

 adc->cb = cb;
 adc->cb_priv = private;

 return 0;
}
