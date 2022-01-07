
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * parent; } ;
struct iio_dev {char* name; int num_channels; int channels; int modes; int * info; TYPE_1__ dev; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; } ;
struct dmard10_data {struct i2c_client* client; } ;


 int ARRAY_SIZE (int ) ;
 int DMARD10_REG_STADR ;
 int DMARD10_REG_STAINT ;
 int DMARD10_VALUE_STADR ;
 int DMARD10_VALUE_STAINT ;
 int ENODEV ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 int dev_err (int *,char*) ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 int dmard10_channels ;
 int dmard10_info ;
 int dmard10_reset (struct i2c_client*) ;
 int dmard10_shutdown (struct i2c_client*) ;
 int i2c_set_clientdata (struct i2c_client*,struct iio_dev*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int iio_device_register (struct iio_dev*) ;
 struct dmard10_data* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int dmard10_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 int ret;
 struct iio_dev *indio_dev;
 struct dmard10_data *data;


 ret = i2c_smbus_read_byte_data(client, DMARD10_REG_STADR);
 if (ret != DMARD10_VALUE_STADR)
  return (ret < 0) ? ret : -ENODEV;

 ret = i2c_smbus_read_byte_data(client, DMARD10_REG_STAINT);
 if (ret != DMARD10_VALUE_STAINT)
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
 indio_dev->info = &dmard10_info;
 indio_dev->name = "dmard10";
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->channels = dmard10_channels;
 indio_dev->num_channels = ARRAY_SIZE(dmard10_channels);

 ret = dmard10_reset(client);
 if (ret < 0)
  return ret;

 ret = iio_device_register(indio_dev);
 if (ret < 0) {
  dev_err(&client->dev, "device_register failed\n");
  dmard10_shutdown(client);
 }

 return ret;
}
