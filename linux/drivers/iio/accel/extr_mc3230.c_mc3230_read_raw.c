
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mc3230_data {int client; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int address; } ;


 int EINVAL ;


 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_NANO ;
 int i2c_smbus_read_byte_data (int ,int ) ;
 struct mc3230_data* iio_priv (struct iio_dev*) ;
 int mc3230_nscale ;
 int sign_extend32 (int,int) ;

__attribute__((used)) static int mc3230_read_raw(struct iio_dev *indio_dev,
    struct iio_chan_spec const *chan,
    int *val, int *val2, long mask)
{
 struct mc3230_data *data = iio_priv(indio_dev);
 int ret;

 switch (mask) {
 case 129:
  ret = i2c_smbus_read_byte_data(data->client, chan->address);
  if (ret < 0)
   return ret;
  *val = sign_extend32(ret, 7);
  return IIO_VAL_INT;
 case 128:
  *val = 0;
  *val2 = mc3230_nscale;
  return IIO_VAL_INT_PLUS_NANO;
 default:
  return -EINVAL;
 }
}
