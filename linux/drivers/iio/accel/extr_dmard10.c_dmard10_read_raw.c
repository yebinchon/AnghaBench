
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {size_t address; } ;
struct dmard10_data {int client; } ;
typedef int buf ;
typedef int __le16 ;


 int DMARD10_REG_STADR ;
 int EINVAL ;


 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_NANO ;
 int dmard10_nscale ;
 int i2c_smbus_read_i2c_block_data (int ,int ,int,int *) ;
 struct dmard10_data* iio_priv (struct iio_dev*) ;
 int le16_to_cpu (int ) ;
 int sign_extend32 (int,int) ;

__attribute__((used)) static int dmard10_read_raw(struct iio_dev *indio_dev,
    struct iio_chan_spec const *chan,
    int *val, int *val2, long mask)
{
 struct dmard10_data *data = iio_priv(indio_dev);
 __le16 buf[4];
 int ret;

 switch (mask) {
 case 129:




  ret = i2c_smbus_read_i2c_block_data(data->client,
          DMARD10_REG_STADR,
          sizeof(buf), (u8 *)buf);
  if (ret < 0)
   return ret;
  ret = le16_to_cpu(buf[chan->address]);
  *val = sign_extend32(ret, 12);
  return IIO_VAL_INT;
 case 128:
  *val = 0;
  *val2 = dmard10_nscale;
  return IIO_VAL_INT_PLUS_NANO;
 default:
  return -EINVAL;
 }
}
