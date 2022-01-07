
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; int address; } ;
struct dmard06_data {int chip_id; TYPE_1__* client; } ;
struct TYPE_2__ {int dev; } ;


 int DMARD05_AXIS_SCALE_VAL ;
 int DMARD06_AXIS_SCALE_VAL ;
 int DMARD06_CHIP_ID ;
 int DMARD06_SIGN_BIT ;
 int DMARD06_TEMP_CENTER_VAL ;
 int EINVAL ;





 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_MICRO ;
 int dev_err (int *,char*,int) ;
 int i2c_smbus_read_byte_data (TYPE_1__*,int ) ;
 struct dmard06_data* iio_priv (struct iio_dev*) ;
 int sign_extend32 (int,int ) ;

__attribute__((used)) static int dmard06_read_raw(struct iio_dev *indio_dev,
       struct iio_chan_spec const *chan,
       int *val, int *val2, long mask)
{
 struct dmard06_data *dmard06 = iio_priv(indio_dev);
 int ret;

 switch (mask) {
 case 130:
  ret = i2c_smbus_read_byte_data(dmard06->client,
            chan->address);
  if (ret < 0) {
   dev_err(&dmard06->client->dev,
    "Error reading data: %d\n", ret);
   return ret;
  }

  *val = sign_extend32(ret, DMARD06_SIGN_BIT);

  if (dmard06->chip_id == DMARD06_CHIP_ID)
   *val = *val >> 1;

  switch (chan->type) {
  case 132:
   return IIO_VAL_INT;
  case 128:
   if (dmard06->chip_id != DMARD06_CHIP_ID)
    *val = *val / 2;
   return IIO_VAL_INT;
  default:
   return -EINVAL;
  }
 case 131:
  switch (chan->type) {
  case 128:
   *val = DMARD06_TEMP_CENTER_VAL;
   return IIO_VAL_INT;
  default:
   return -EINVAL;
  }
 case 129:
  switch (chan->type) {
  case 132:
   *val = 0;
   if (dmard06->chip_id == DMARD06_CHIP_ID)
    *val2 = DMARD06_AXIS_SCALE_VAL;
   else
    *val2 = DMARD05_AXIS_SCALE_VAL;
   return IIO_VAL_INT_PLUS_MICRO;
  default:
   return -EINVAL;
  }
 default:
  return -EINVAL;
 }
}
