
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mc3230_data {struct i2c_client* client; } ;
struct TYPE_2__ {int * parent; } ;
struct iio_dev {char* name; int num_channels; int channels; int modes; int * info; TYPE_1__ dev; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; } ;


 int ARRAY_SIZE (int ) ;
 int ENODEV ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 int MC3230_CHIP_ID ;
 int MC3230_MODE_OPCON_STANDBY ;
 int MC3230_MODE_OPCON_WAKE ;
 int MC3230_PRODUCT_CODE ;
 int MC3230_REG_CHIP_ID ;
 int MC3230_REG_PRODUCT_CODE ;
 int dev_err (int *,char*) ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 int i2c_set_clientdata (struct i2c_client*,struct iio_dev*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int iio_device_register (struct iio_dev*) ;
 struct mc3230_data* iio_priv (struct iio_dev*) ;
 int mc3230_channels ;
 int mc3230_info ;
 int mc3230_set_opcon (struct mc3230_data*,int ) ;

__attribute__((used)) static int mc3230_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 int ret;
 struct iio_dev *indio_dev;
 struct mc3230_data *data;


 ret = i2c_smbus_read_byte_data(client, MC3230_REG_CHIP_ID);
 if (ret != MC3230_CHIP_ID)
  return (ret < 0) ? ret : -ENODEV;

 ret = i2c_smbus_read_byte_data(client, MC3230_REG_PRODUCT_CODE);
 if (ret != MC3230_PRODUCT_CODE)
  return (ret < 0) ? ret : -ENODEV;

 indio_dev = devm_iio_device_alloc(&client->dev, sizeof(*data));
 if (!indio_dev) {
  dev_err(&client->dev, "iio allocation failed!\n");
  return -ENOMEM;
 }

 data = iio_priv(indio_dev);
 data->client = client;
 i2c_set_clientdata(client, indio_dev);

 indio_dev->dev.parent = &client->dev;
 indio_dev->info = &mc3230_info;
 indio_dev->name = "mc3230";
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->channels = mc3230_channels;
 indio_dev->num_channels = ARRAY_SIZE(mc3230_channels);

 ret = mc3230_set_opcon(data, MC3230_MODE_OPCON_WAKE);
 if (ret < 0)
  return ret;

 ret = iio_device_register(indio_dev);
 if (ret < 0) {
  dev_err(&client->dev, "device_register failed\n");
  mc3230_set_opcon(data, MC3230_MODE_OPCON_STANDBY);
 }

 return ret;
}
