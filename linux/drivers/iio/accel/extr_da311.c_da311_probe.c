
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * parent; } ;
struct iio_dev {char* name; int num_channels; int channels; int modes; int * info; TYPE_1__ dev; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; } ;
struct da311_data {struct i2c_client* client; } ;


 int ARRAY_SIZE (int ) ;
 int DA311_CHIP_ID ;
 int DA311_REG_CHIP_ID ;
 int ENODEV ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 int da311_channels ;
 int da311_enable (struct i2c_client*,int) ;
 int da311_info ;
 int da311_reset (struct i2c_client*) ;
 int dev_err (int *,char*) ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 int i2c_set_clientdata (struct i2c_client*,struct iio_dev*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int iio_device_register (struct iio_dev*) ;
 struct da311_data* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int da311_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 int ret;
 struct iio_dev *indio_dev;
 struct da311_data *data;

 ret = i2c_smbus_read_byte_data(client, DA311_REG_CHIP_ID);
 if (ret != DA311_CHIP_ID)
  return (ret < 0) ? ret : -ENODEV;

 indio_dev = devm_iio_device_alloc(&client->dev, sizeof(*data));
 if (!indio_dev)
  return -ENOMEM;

 data = iio_priv(indio_dev);
 data->client = client;
 i2c_set_clientdata(client, indio_dev);

 indio_dev->dev.parent = &client->dev;
 indio_dev->info = &da311_info;
 indio_dev->name = "da311";
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->channels = da311_channels;
 indio_dev->num_channels = ARRAY_SIZE(da311_channels);

 ret = da311_reset(client);
 if (ret < 0)
  return ret;

 ret = da311_enable(client, 1);
 if (ret < 0)
  return ret;

 ret = iio_device_register(indio_dev);
 if (ret < 0) {
  dev_err(&client->dev, "device_register failed\n");
  da311_enable(client, 0);
 }

 return ret;
}
