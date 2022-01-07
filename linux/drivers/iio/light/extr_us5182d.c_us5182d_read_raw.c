
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us5182d_data {int client; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;


 int EINVAL ;


 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_MICRO ;
 int US5182D_AGAIN_MASK ;
 int US5182D_REG_CFG1 ;
 int i2c_smbus_read_byte_data (int ,int ) ;
 struct us5182d_data* iio_priv (struct iio_dev*) ;
 int us5182d_read_value (struct us5182d_data*,struct iio_chan_spec const*) ;
 int* us5182d_scales ;

__attribute__((used)) static int us5182d_read_raw(struct iio_dev *indio_dev,
       struct iio_chan_spec const *chan, int *val,
       int *val2, long mask)
{
 struct us5182d_data *data = iio_priv(indio_dev);
 int ret;

 switch (mask) {
 case 129:
  ret = us5182d_read_value(data, chan);
  if (ret < 0)
   return ret;
  *val = ret;
  return IIO_VAL_INT;
 case 128:
  ret = i2c_smbus_read_byte_data(data->client, US5182D_REG_CFG1);
  if (ret < 0)
   return ret;
  *val = 0;
  *val2 = us5182d_scales[ret & US5182D_AGAIN_MASK];
  return IIO_VAL_INT_PLUS_MICRO;
 default:
  return -EINVAL;
 }
}
