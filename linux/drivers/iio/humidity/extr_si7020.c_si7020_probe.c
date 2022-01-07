
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * parent; } ;
struct iio_dev {int num_channels; int channels; int * info; int modes; int name; TYPE_1__ dev; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; int adapter; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int I2C_FUNC_SMBUS_READ_WORD_DATA ;
 int I2C_FUNC_SMBUS_WRITE_BYTE ;
 int INDIO_DIRECT_MODE ;
 int SI7020CMD_RESET ;
 int dev_name (int *) ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 int devm_iio_device_register (int *,struct iio_dev*) ;
 int i2c_check_functionality (int ,int) ;
 int i2c_smbus_write_byte (struct i2c_client*,int ) ;
 struct i2c_client** iio_priv (struct iio_dev*) ;
 int msleep (int) ;
 int si7020_channels ;
 int si7020_info ;

__attribute__((used)) static int si7020_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 struct iio_dev *indio_dev;
 struct i2c_client **data;
 int ret;

 if (!i2c_check_functionality(client->adapter,
         I2C_FUNC_SMBUS_WRITE_BYTE |
         I2C_FUNC_SMBUS_READ_WORD_DATA))
  return -EOPNOTSUPP;


 ret = i2c_smbus_write_byte(client, SI7020CMD_RESET);
 if (ret < 0)
  return ret;

 msleep(15);

 indio_dev = devm_iio_device_alloc(&client->dev, sizeof(*data));
 if (!indio_dev)
  return -ENOMEM;

 data = iio_priv(indio_dev);
 *data = client;

 indio_dev->dev.parent = &client->dev;
 indio_dev->name = dev_name(&client->dev);
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->info = &si7020_info;
 indio_dev->channels = si7020_channels;
 indio_dev->num_channels = ARRAY_SIZE(si7020_channels);

 return devm_iio_device_register(&client->dev, indio_dev);
}
