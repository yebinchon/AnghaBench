
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int dummy; } ;
struct iio_chan_spec {int channel2; int type; } ;
struct TYPE_2__ {int voc; int co2; int raw_data; } ;
struct ccs811_data {int lock; TYPE_1__ buffer; } ;


 int CCS811_VOLTAGE_MASK ;
 int EINVAL ;






 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_MICRO ;
 int IIO_VAL_INT_PLUS_NANO ;

 int be16_to_cpu (int ) ;
 int ccs811_get_measurement (struct ccs811_data*) ;
 int iio_device_claim_direct_mode (struct iio_dev*) ;
 int iio_device_release_direct_mode (struct iio_dev*) ;
 struct ccs811_data* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ccs811_read_raw(struct iio_dev *indio_dev,
      struct iio_chan_spec const *chan,
      int *val, int *val2, long mask)
{
 struct ccs811_data *data = iio_priv(indio_dev);
 int ret;

 switch (mask) {
 case 134:
  ret = iio_device_claim_direct_mode(indio_dev);
  if (ret)
   return ret;
  mutex_lock(&data->lock);
  ret = ccs811_get_measurement(data);
  if (ret < 0) {
   mutex_unlock(&data->lock);
   iio_device_release_direct_mode(indio_dev);
   return ret;
  }

  switch (chan->type) {
  case 128:
   *val = be16_to_cpu(data->buffer.raw_data) &
        CCS811_VOLTAGE_MASK;
   ret = IIO_VAL_INT;
   break;
  case 131:
   *val = be16_to_cpu(data->buffer.raw_data) >> 10;
   ret = IIO_VAL_INT;
   break;
  case 132:
   switch (chan->channel2) {
   case 130:
    *val = be16_to_cpu(data->buffer.co2);
    ret = IIO_VAL_INT;
    break;
   case 129:
    *val = be16_to_cpu(data->buffer.voc);
    ret = IIO_VAL_INT;
    break;
   default:
    ret = -EINVAL;
   }
   break;
  default:
   ret = -EINVAL;
  }
  mutex_unlock(&data->lock);
  iio_device_release_direct_mode(indio_dev);

  return ret;

 case 133:
  switch (chan->type) {
  case 128:
   *val = 1;
   *val2 = 612903;
   return IIO_VAL_INT_PLUS_MICRO;
  case 131:
   *val = 0;
   *val2 = 1000;
   return IIO_VAL_INT_PLUS_MICRO;
  case 132:
   switch (chan->channel2) {
   case 130:
    *val = 0;
    *val2 = 100;
    return IIO_VAL_INT_PLUS_MICRO;
   case 129:
    *val = 0;
    *val2 = 100;
    return IIO_VAL_INT_PLUS_NANO;
   default:
    return -EINVAL;
   }
  default:
   return -EINVAL;
  }
 default:
  return -EINVAL;
 }
}
