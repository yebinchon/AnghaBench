
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct rpr0521_data {int lock; int regmap; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {size_t address; int type; } ;
typedef int raw_data ;
typedef int __le16 ;
struct TYPE_2__ {int address; int device_mask; } ;


 int EBUSY ;
 int EINVAL ;




 int IIO_INTENSITY ;
 int IIO_PROXIMITY ;
 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_MICRO ;
 int iio_device_claim_direct_mode (struct iio_dev*) ;
 int iio_device_release_direct_mode (struct iio_dev*) ;
 struct rpr0521_data* iio_priv (struct iio_dev*) ;
 int le16_to_cpu (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_bulk_read (int ,int ,int *,int) ;
 TYPE_1__* rpr0521_data_reg ;
 int rpr0521_get_gain (struct rpr0521_data*,size_t,int*,int*) ;
 int rpr0521_read_ps_offset (struct rpr0521_data*,int*) ;
 int rpr0521_read_samp_freq (struct rpr0521_data*,int ,int*,int*) ;
 int rpr0521_set_power_state (struct rpr0521_data*,int,int ) ;

__attribute__((used)) static int rpr0521_read_raw(struct iio_dev *indio_dev,
       struct iio_chan_spec const *chan, int *val,
       int *val2, long mask)
{
 struct rpr0521_data *data = iio_priv(indio_dev);
 int ret;
 int busy;
 u8 device_mask;
 __le16 raw_data;

 switch (mask) {
 case 130:
  if (chan->type != IIO_INTENSITY && chan->type != IIO_PROXIMITY)
   return -EINVAL;

  busy = iio_device_claim_direct_mode(indio_dev);
  if (busy)
   return -EBUSY;

  device_mask = rpr0521_data_reg[chan->address].device_mask;

  mutex_lock(&data->lock);
  ret = rpr0521_set_power_state(data, 1, device_mask);
  if (ret < 0)
   goto rpr0521_read_raw_out;

  ret = regmap_bulk_read(data->regmap,
           rpr0521_data_reg[chan->address].address,
           &raw_data, sizeof(raw_data));
  if (ret < 0) {
   rpr0521_set_power_state(data, 0, device_mask);
   goto rpr0521_read_raw_out;
  }

  ret = rpr0521_set_power_state(data, 0, device_mask);

rpr0521_read_raw_out:
  mutex_unlock(&data->lock);
  iio_device_release_direct_mode(indio_dev);
  if (ret < 0)
   return ret;

  *val = le16_to_cpu(raw_data);

  return IIO_VAL_INT;

 case 128:
  mutex_lock(&data->lock);
  ret = rpr0521_get_gain(data, chan->address, val, val2);
  mutex_unlock(&data->lock);
  if (ret < 0)
   return ret;

  return IIO_VAL_INT_PLUS_MICRO;

 case 129:
  mutex_lock(&data->lock);
  ret = rpr0521_read_samp_freq(data, chan->type, val, val2);
  mutex_unlock(&data->lock);
  if (ret < 0)
   return ret;

  return IIO_VAL_INT_PLUS_MICRO;

 case 131:
  mutex_lock(&data->lock);
  ret = rpr0521_read_ps_offset(data, val);
  mutex_unlock(&data->lock);
  if (ret < 0)
   return ret;

  return IIO_VAL_INT;

 default:
  return -EINVAL;
 }
}
