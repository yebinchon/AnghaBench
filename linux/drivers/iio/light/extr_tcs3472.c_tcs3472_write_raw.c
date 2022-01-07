
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcs3472_data {int control; int atime; int client; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;


 int ARRAY_SIZE (int*) ;
 int EINVAL ;


 int TCS3472_ATIME ;
 int TCS3472_CONTROL ;
 int TCS3472_CONTROL_AGAIN_MASK ;
 int i2c_smbus_write_byte_data (int ,int ,int) ;
 struct tcs3472_data* iio_priv (struct iio_dev*) ;
 int* tcs3472_agains ;

__attribute__((used)) static int tcs3472_write_raw(struct iio_dev *indio_dev,
          struct iio_chan_spec const *chan,
          int val, int val2, long mask)
{
 struct tcs3472_data *data = iio_priv(indio_dev);
 int i;

 switch (mask) {
 case 129:
  if (val2 != 0)
   return -EINVAL;
  for (i = 0; i < ARRAY_SIZE(tcs3472_agains); i++) {
   if (val == tcs3472_agains[i]) {
    data->control &= ~TCS3472_CONTROL_AGAIN_MASK;
    data->control |= i;
    return i2c_smbus_write_byte_data(
     data->client, TCS3472_CONTROL,
     data->control);
   }
  }
  return -EINVAL;
 case 128:
  if (val != 0)
   return -EINVAL;
  for (i = 0; i < 256; i++) {
   if (val2 == (256 - i) * 2400) {
    data->atime = i;
    return i2c_smbus_write_byte_data(
     data->client, TCS3472_ATIME,
     data->atime);
   }

  }
  return -EINVAL;
 }
 return -EINVAL;
}
