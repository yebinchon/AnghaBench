
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * parent; } ;
struct iio_dev {int * info; int num_channels; int channels; int modes; int name; TYPE_1__ dev; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; int adapter; } ;
struct dmard06_data {int chip_id; struct i2c_client* client; } ;


 int ARRAY_SIZE (int ) ;
 int DMARD05_CHIP_ID ;
 int DMARD06_CHIP_ID ;
 int DMARD06_CHIP_ID_REG ;
 int DMARD06_DRV_NAME ;
 int DMARD07_CHIP_ID ;
 int ENODEV ;
 int ENOMEM ;
 int ENXIO ;
 int I2C_FUNC_I2C ;
 int INDIO_DIRECT_MODE ;
 int dev_err (int *,char*,...) ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 int devm_iio_device_register (int *,struct iio_dev*) ;
 int dmard06_channels ;
 int dmard06_info ;
 int i2c_check_functionality (int ,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct iio_dev*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 struct dmard06_data* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int dmard06_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 int ret;
 struct iio_dev *indio_dev;
 struct dmard06_data *dmard06;

 if (!i2c_check_functionality(client->adapter, I2C_FUNC_I2C)) {
  dev_err(&client->dev, "I2C check functionality failed\n");
  return -ENXIO;
 }

 indio_dev = devm_iio_device_alloc(&client->dev, sizeof(*dmard06));
 if (!indio_dev) {
  dev_err(&client->dev, "Failed to allocate iio device\n");
  return -ENOMEM;
 }

 dmard06 = iio_priv(indio_dev);
 dmard06->client = client;

 ret = i2c_smbus_read_byte_data(dmard06->client, DMARD06_CHIP_ID_REG);
 if (ret < 0) {
  dev_err(&client->dev, "Error reading chip id: %d\n", ret);
  return ret;
 }

 if (ret != DMARD05_CHIP_ID && ret != DMARD06_CHIP_ID &&
     ret != DMARD07_CHIP_ID) {
  dev_err(&client->dev, "Invalid chip id: %02d\n", ret);
  return -ENODEV;
 }

 dmard06->chip_id = ret;

 i2c_set_clientdata(client, indio_dev);
 indio_dev->dev.parent = &client->dev;
 indio_dev->name = DMARD06_DRV_NAME;
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->channels = dmard06_channels;
 indio_dev->num_channels = ARRAY_SIZE(dmard06_channels);
 indio_dev->info = &dmard06_info;

 return devm_iio_device_register(&client->dev, indio_dev);
}
