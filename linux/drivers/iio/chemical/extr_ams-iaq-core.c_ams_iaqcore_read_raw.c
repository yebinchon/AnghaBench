
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int dummy; } ;
struct iio_chan_spec {int address; } ;
struct TYPE_2__ {int voc_ppb; int resistance; int co2_ppm; } ;
struct ams_iaqcore_data {int lock; TYPE_1__ buffer; } ;





 int EINVAL ;
 long IIO_CHAN_INFO_PROCESSED ;
 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_MICRO ;
 int IIO_VAL_INT_PLUS_NANO ;
 int ams_iaqcore_get_measurement (struct ams_iaqcore_data*) ;
 int be16_to_cpu (int ) ;
 int be32_to_cpu (int ) ;
 struct ams_iaqcore_data* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ams_iaqcore_read_raw(struct iio_dev *indio_dev,
    struct iio_chan_spec const *chan, int *val,
    int *val2, long mask)
{
 struct ams_iaqcore_data *data = iio_priv(indio_dev);
 int ret;

 if (mask != IIO_CHAN_INFO_PROCESSED)
  return -EINVAL;

 mutex_lock(&data->lock);
 ret = ams_iaqcore_get_measurement(data);

 if (ret)
  goto err_out;

 switch (chan->address) {
 case 130:
  *val = 0;
  *val2 = be16_to_cpu(data->buffer.co2_ppm);
  ret = IIO_VAL_INT_PLUS_MICRO;
  break;
 case 129:
  *val = be32_to_cpu(data->buffer.resistance);
  ret = IIO_VAL_INT;
  break;
 case 128:
  *val = 0;
  *val2 = be16_to_cpu(data->buffer.voc_ppb);
  ret = IIO_VAL_INT_PLUS_NANO;
  break;
 default:
  ret = -EINVAL;
 }

err_out:
 mutex_unlock(&data->lock);

 return ret;
}
