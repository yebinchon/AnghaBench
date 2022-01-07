
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct kmx61_data {size_t range; int lock; } ;
struct iio_dev {int dummy; } ;
struct TYPE_2__ {int shift; int realbits; } ;
struct iio_chan_spec {int const type; int address; TYPE_1__ scan_type; int scan_index; } ;


 int EINVAL ;





 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_MICRO ;
 int KMX61_ACC_XOUT_L ;
 int KMX61_MAG_XOUT_L ;
 struct kmx61_data* kmx61_get_data (struct iio_dev*) ;
 int kmx61_get_odr (struct kmx61_data*,int*,int*,int ) ;
 int kmx61_read_measurement (struct kmx61_data*,int ,int ) ;
 int kmx61_set_power_state (struct kmx61_data*,int,int ) ;
 int* kmx61_uscale_table ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sign_extend32 (int,int ) ;

__attribute__((used)) static int kmx61_read_raw(struct iio_dev *indio_dev,
     struct iio_chan_spec const *chan, int *val,
     int *val2, long mask)
{
 int ret;
 u8 base_reg;
 struct kmx61_data *data = kmx61_get_data(indio_dev);

 switch (mask) {
 case 131:
  switch (chan->type) {
  case 132:
   base_reg = KMX61_ACC_XOUT_L;
   break;
  case 128:
   base_reg = KMX61_MAG_XOUT_L;
   break;
  default:
   return -EINVAL;
  }
  mutex_lock(&data->lock);

  ret = kmx61_set_power_state(data, 1, chan->address);
  if (ret) {
   mutex_unlock(&data->lock);
   return ret;
  }

  ret = kmx61_read_measurement(data, base_reg, chan->scan_index);
  if (ret < 0) {
   kmx61_set_power_state(data, 0, chan->address);
   mutex_unlock(&data->lock);
   return ret;
  }
  *val = sign_extend32(ret >> chan->scan_type.shift,
         chan->scan_type.realbits - 1);
  ret = kmx61_set_power_state(data, 0, chan->address);

  mutex_unlock(&data->lock);
  if (ret)
   return ret;
  return IIO_VAL_INT;
 case 129:
  switch (chan->type) {
  case 132:
   *val = 0;
   *val2 = kmx61_uscale_table[data->range];
   return IIO_VAL_INT_PLUS_MICRO;
  case 128:

   *val = 0;
   *val2 = 1465;
   return IIO_VAL_INT_PLUS_MICRO;
  default:
   return -EINVAL;
  }
 case 130:
  if (chan->type != 132 && chan->type != 128)
   return -EINVAL;

  mutex_lock(&data->lock);
  ret = kmx61_get_odr(data, val, val2, chan->address);
  mutex_unlock(&data->lock);
  if (ret)
   return -EINVAL;
  return IIO_VAL_INT_PLUS_MICRO;
 }
 return -EINVAL;
}
