
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lp8788_adc {int lock; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int channel; } ;
typedef enum lp8788_adc_id { ____Placeholder_lp8788_adc_id } lp8788_adc_id ;


 int EINVAL ;
 int EIO ;


 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_MICRO ;
 struct lp8788_adc* iio_priv (struct iio_dev*) ;
 int lp8788_get_adc_result (struct lp8788_adc*,int,int*) ;
 int* lp8788_scale ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int lp8788_adc_read_raw(struct iio_dev *indio_dev,
   struct iio_chan_spec const *chan,
   int *val, int *val2, long mask)
{
 struct lp8788_adc *adc = iio_priv(indio_dev);
 enum lp8788_adc_id id = chan->channel;
 int ret;

 mutex_lock(&adc->lock);

 switch (mask) {
 case 129:
  ret = lp8788_get_adc_result(adc, id, val) ? -EIO : IIO_VAL_INT;
  break;
 case 128:
  *val = lp8788_scale[id] / 1000000;
  *val2 = lp8788_scale[id] % 1000000;
  ret = IIO_VAL_INT_PLUS_MICRO;
  break;
 default:
  ret = -EINVAL;
  break;
 }

 mutex_unlock(&adc->lock);

 return ret;
}
