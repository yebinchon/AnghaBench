
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * parent; } ;
struct iio_dev {int num_channels; int channels; int modes; int name; int * info; TYPE_1__ dev; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; } ;
struct am2315_data {int lock; struct i2c_client* client; } ;


 int AM2315_DRIVER_NAME ;
 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 int am2315_channels ;
 int am2315_info ;
 int am2315_trigger_handler ;
 int dev_err (int *,char*) ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 int devm_iio_device_register (int *,struct iio_dev*) ;
 int devm_iio_triggered_buffer_setup (int *,struct iio_dev*,int ,int ,int *) ;
 int i2c_set_clientdata (struct i2c_client*,struct iio_dev*) ;
 int iio_pollfunc_store_time ;
 struct am2315_data* iio_priv (struct iio_dev*) ;
 int mutex_init (int *) ;

__attribute__((used)) static int am2315_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 int ret;
 struct iio_dev *indio_dev;
 struct am2315_data *data;

 indio_dev = devm_iio_device_alloc(&client->dev, sizeof(*data));
 if (!indio_dev) {
  dev_err(&client->dev, "iio allocation failed!\n");
  return -ENOMEM;
 }

 data = iio_priv(indio_dev);
 data->client = client;
 i2c_set_clientdata(client, indio_dev);
 mutex_init(&data->lock);

 indio_dev->dev.parent = &client->dev;
 indio_dev->info = &am2315_info;
 indio_dev->name = AM2315_DRIVER_NAME;
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->channels = am2315_channels;
 indio_dev->num_channels = ARRAY_SIZE(am2315_channels);

 ret = devm_iio_triggered_buffer_setup(&client->dev,
     indio_dev, iio_pollfunc_store_time,
      am2315_trigger_handler, ((void*)0));
 if (ret < 0) {
  dev_err(&client->dev, "iio triggered buffer setup failed\n");
  return ret;
 }

 return devm_iio_device_register(&client->dev, indio_dev);
}
