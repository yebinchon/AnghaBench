
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * parent; } ;
struct iio_dev {int num_channels; int channels; int modes; TYPE_1__ dev; int name; int * info; } ;
struct i2c_device_id {int name; } ;
struct i2c_client {int dev; int adapter; } ;
struct hp206c_data {int mutex; struct i2c_client* client; } ;


 int ARRAY_SIZE (int ) ;
 int ENODEV ;
 int ENOMEM ;
 int I2C_FUNC_SMBUS_BYTE ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int I2C_FUNC_SMBUS_READ_I2C_BLOCK ;
 int INDIO_DIRECT_MODE ;
 int dev_err (int *,char*,...) ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 int devm_iio_device_register (int *,struct iio_dev*) ;
 int hp206c_channels ;
 int hp206c_info ;
 int hp206c_soft_reset (struct iio_dev*) ;
 int i2c_check_functionality (int ,int) ;
 int i2c_set_clientdata (struct i2c_client*,struct iio_dev*) ;
 struct hp206c_data* iio_priv (struct iio_dev*) ;
 int mutex_init (int *) ;

__attribute__((used)) static int hp206c_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 struct iio_dev *indio_dev;
 struct hp206c_data *data;
 int ret;

 if (!i2c_check_functionality(client->adapter,
         I2C_FUNC_SMBUS_BYTE |
         I2C_FUNC_SMBUS_BYTE_DATA |
         I2C_FUNC_SMBUS_READ_I2C_BLOCK)) {
  dev_err(&client->dev, "Adapter does not support "
    "all required i2c functionality\n");
  return -ENODEV;
 }

 indio_dev = devm_iio_device_alloc(&client->dev, sizeof(*data));
 if (!indio_dev)
  return -ENOMEM;

 data = iio_priv(indio_dev);
 data->client = client;
 mutex_init(&data->mutex);

 indio_dev->info = &hp206c_info;
 indio_dev->name = id->name;
 indio_dev->dev.parent = &client->dev;
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->channels = hp206c_channels;
 indio_dev->num_channels = ARRAY_SIZE(hp206c_channels);

 i2c_set_clientdata(client, indio_dev);


 ret = hp206c_soft_reset(indio_dev);
 if (ret) {
  dev_err(&client->dev, "Failed to reset on startup: %d\n", ret);
  return -ENODEV;
 }

 return devm_iio_device_register(&client->dev, indio_dev);
}
