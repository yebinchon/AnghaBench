
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcp4018_data {int client; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;


 int EINVAL ;

 int MCP4018_WIPER_MAX ;
 int i2c_smbus_write_byte (int ,int) ;
 struct mcp4018_data* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int mcp4018_write_raw(struct iio_dev *indio_dev,
        struct iio_chan_spec const *chan,
        int val, int val2, long mask)
{
 struct mcp4018_data *data = iio_priv(indio_dev);

 switch (mask) {
 case 128:
  if (val > MCP4018_WIPER_MAX || val < 0)
   return -EINVAL;
  break;
 default:
  return -EINVAL;
 }

 return i2c_smbus_write_byte(data->client, val);
}
