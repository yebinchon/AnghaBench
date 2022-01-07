
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * parent; } ;
struct iio_dev {int modes; int num_channels; int channels; int name; int * info; TYPE_1__ dev; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; } ;
struct adjd_s311_data {struct i2c_client* client; } ;


 int ADJD_S311_DRV_NAME ;
 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 int adjd_s311_channels ;
 int adjd_s311_info ;
 int adjd_s311_trigger_handler ;
 int dev_info (int *,char*) ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 int i2c_set_clientdata (struct i2c_client*,struct iio_dev*) ;
 int iio_device_register (struct iio_dev*) ;
 struct adjd_s311_data* iio_priv (struct iio_dev*) ;
 int iio_triggered_buffer_cleanup (struct iio_dev*) ;
 int iio_triggered_buffer_setup (struct iio_dev*,int *,int ,int *) ;

__attribute__((used)) static int adjd_s311_probe(struct i2c_client *client,
      const struct i2c_device_id *id)
{
 struct adjd_s311_data *data;
 struct iio_dev *indio_dev;
 int err;

 indio_dev = devm_iio_device_alloc(&client->dev, sizeof(*data));
 if (indio_dev == ((void*)0))
  return -ENOMEM;

 data = iio_priv(indio_dev);
 i2c_set_clientdata(client, indio_dev);
 data->client = client;

 indio_dev->dev.parent = &client->dev;
 indio_dev->info = &adjd_s311_info;
 indio_dev->name = ADJD_S311_DRV_NAME;
 indio_dev->channels = adjd_s311_channels;
 indio_dev->num_channels = ARRAY_SIZE(adjd_s311_channels);
 indio_dev->modes = INDIO_DIRECT_MODE;

 err = iio_triggered_buffer_setup(indio_dev, ((void*)0),
  adjd_s311_trigger_handler, ((void*)0));
 if (err < 0)
  return err;

 err = iio_device_register(indio_dev);
 if (err)
  goto exit_unreg_buffer;

 dev_info(&client->dev, "ADJD-S311 color sensor registered\n");

 return 0;

exit_unreg_buffer:
 iio_triggered_buffer_cleanup(indio_dev);
 return err;
}
