
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {size_t address; } ;
struct dmard09_data {TYPE_1__* client; } ;
typedef int s16 ;
struct TYPE_2__ {int dev; } ;


 int DMARD09_BUF_LEN ;
 int DMARD09_REG_STAT ;
 int EINVAL ;

 int IIO_VAL_INT ;
 int dev_err (int *,char*,int ) ;
 int get_unaligned_le16 (int *) ;
 int i2c_smbus_read_i2c_block_data (TYPE_1__*,int ,int,int *) ;
 struct dmard09_data* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int dmard09_read_raw(struct iio_dev *indio_dev,
       struct iio_chan_spec const *chan,
       int *val, int *val2, long mask)
{
 struct dmard09_data *data = iio_priv(indio_dev);
 u8 buf[DMARD09_BUF_LEN];
 int ret;
 s16 accel;

 switch (mask) {
 case 128:




  ret = i2c_smbus_read_i2c_block_data(data->client,
          DMARD09_REG_STAT,
          DMARD09_BUF_LEN, buf);
  if (ret < 0) {
   dev_err(&data->client->dev, "Error reading reg %d\n",
    DMARD09_REG_STAT);
   return ret;
  }

  accel = get_unaligned_le16(&buf[chan->address]);


  accel <<= 4;
  accel >>= 7;

  *val = accel;

  return IIO_VAL_INT;
 default:
  return -EINVAL;
 }
}
