
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int address; } ;
struct da311_data {int client; } ;


 int EINVAL ;


 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_NANO ;
 int da311_nscale ;
 int i2c_smbus_read_word_data (int ,int ) ;
 struct da311_data* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int da311_read_raw(struct iio_dev *indio_dev,
    struct iio_chan_spec const *chan,
    int *val, int *val2, long mask)
{
 struct da311_data *data = iio_priv(indio_dev);
 int ret;

 switch (mask) {
 case 129:
  ret = i2c_smbus_read_word_data(data->client, chan->address);
  if (ret < 0)
   return ret;




  *val = (short)ret >> 4;
  return IIO_VAL_INT;
 case 128:
  *val = 0;
  *val2 = da311_nscale;
  return IIO_VAL_INT_PLUS_NANO;
 default:
  return -EINVAL;
 }
}
