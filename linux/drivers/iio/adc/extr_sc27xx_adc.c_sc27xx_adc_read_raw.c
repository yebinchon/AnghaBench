
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc27xx_adc_data {int* channel_scale; } ;
struct iio_dev {int mlock; } ;
struct iio_chan_spec {size_t channel; } ;


 int EINVAL ;



 int IIO_VAL_INT ;
 struct sc27xx_adc_data* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sc27xx_adc_read (struct sc27xx_adc_data*,size_t,int,int*) ;
 int sc27xx_adc_read_processed (struct sc27xx_adc_data*,size_t,int,int*) ;

__attribute__((used)) static int sc27xx_adc_read_raw(struct iio_dev *indio_dev,
          struct iio_chan_spec const *chan,
          int *val, int *val2, long mask)
{
 struct sc27xx_adc_data *data = iio_priv(indio_dev);
 int scale = data->channel_scale[chan->channel];
 int ret, tmp;

 switch (mask) {
 case 129:
  mutex_lock(&indio_dev->mlock);
  ret = sc27xx_adc_read(data, chan->channel, scale, &tmp);
  mutex_unlock(&indio_dev->mlock);

  if (ret)
   return ret;

  *val = tmp;
  return IIO_VAL_INT;

 case 130:
  mutex_lock(&indio_dev->mlock);
  ret = sc27xx_adc_read_processed(data, chan->channel, scale,
      &tmp);
  mutex_unlock(&indio_dev->mlock);

  if (ret)
   return ret;

  *val = tmp;
  return IIO_VAL_INT;

 case 128:
  *val = scale;
  return IIO_VAL_INT;

 default:
  return -EINVAL;
 }
}
