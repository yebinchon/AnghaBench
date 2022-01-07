
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tsl4531_data {struct i2c_client* client; int lock; } ;
struct TYPE_2__ {int * parent; } ;
struct iio_dev {int modes; int name; int num_channels; int channels; int * info; TYPE_1__ dev; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 int TSL4531_CONFIG ;
 int TSL4531_CONTROL ;
 int TSL4531_DRV_NAME ;
 int TSL4531_MODE_NORMAL ;
 int TSL4531_TCNTRL_400MS ;
 int dev_err (int *,char*) ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 int i2c_set_clientdata (struct i2c_client*,struct iio_dev*) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int ) ;
 int iio_device_register (struct iio_dev*) ;
 struct tsl4531_data* iio_priv (struct iio_dev*) ;
 int mutex_init (int *) ;
 int tsl4531_channels ;
 int tsl4531_check_id (struct i2c_client*) ;
 int tsl4531_info ;

__attribute__((used)) static int tsl4531_probe(struct i2c_client *client,
     const struct i2c_device_id *id)
{
 struct tsl4531_data *data;
 struct iio_dev *indio_dev;
 int ret;

 indio_dev = devm_iio_device_alloc(&client->dev, sizeof(*data));
 if (!indio_dev)
  return -ENOMEM;

 data = iio_priv(indio_dev);
 i2c_set_clientdata(client, indio_dev);
 data->client = client;
 mutex_init(&data->lock);

 ret = tsl4531_check_id(client);
 if (ret) {
  dev_err(&client->dev, "no TSL4531 sensor\n");
  return ret;
 }

 ret = i2c_smbus_write_byte_data(data->client, TSL4531_CONTROL,
  TSL4531_MODE_NORMAL);
 if (ret < 0)
  return ret;

 ret = i2c_smbus_write_byte_data(data->client, TSL4531_CONFIG,
  TSL4531_TCNTRL_400MS);
 if (ret < 0)
  return ret;

 indio_dev->dev.parent = &client->dev;
 indio_dev->info = &tsl4531_info;
 indio_dev->channels = tsl4531_channels;
 indio_dev->num_channels = ARRAY_SIZE(tsl4531_channels);
 indio_dev->name = TSL4531_DRV_NAME;
 indio_dev->modes = INDIO_DIRECT_MODE;

 return iio_device_register(indio_dev);
}
