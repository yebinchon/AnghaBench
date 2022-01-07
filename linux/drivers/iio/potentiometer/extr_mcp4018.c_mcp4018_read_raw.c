
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mcp4018_data {TYPE_1__* cfg; int client; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
typedef int s32 ;
struct TYPE_2__ {int kohms; } ;


 int EINVAL ;


 int IIO_VAL_FRACTIONAL ;
 int IIO_VAL_INT ;
 int MCP4018_WIPER_MAX ;
 int i2c_smbus_read_byte (int ) ;
 struct mcp4018_data* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int mcp4018_read_raw(struct iio_dev *indio_dev,
       struct iio_chan_spec const *chan,
       int *val, int *val2, long mask)
{
 struct mcp4018_data *data = iio_priv(indio_dev);
 s32 ret;

 switch (mask) {
 case 129:
  ret = i2c_smbus_read_byte(data->client);
  if (ret < 0)
   return ret;
  *val = ret;
  return IIO_VAL_INT;
 case 128:
  *val = 1000 * data->cfg->kohms;
  *val2 = MCP4018_WIPER_MAX;
  return IIO_VAL_FRACTIONAL;
 }

 return -EINVAL;
}
