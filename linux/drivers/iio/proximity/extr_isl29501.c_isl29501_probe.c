
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct isl29501_private {int lock; struct i2c_client* client; } ;
struct TYPE_2__ {int * parent; } ;
struct iio_dev {int * info; int name; int num_channels; int channels; TYPE_1__ dev; int modes; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; int name; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 int dev_err (int *,char*) ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 int devm_iio_device_register (int *,struct iio_dev*) ;
 int devm_iio_triggered_buffer_setup (int *,struct iio_dev*,int ,int ,int *) ;
 int i2c_set_clientdata (struct i2c_client*,struct iio_dev*) ;
 int iio_pollfunc_store_time ;
 struct isl29501_private* iio_priv (struct iio_dev*) ;
 int isl29501_channels ;
 int isl29501_info ;
 int isl29501_init_chip (struct isl29501_private*) ;
 int isl29501_trigger_handler ;
 int mutex_init (int *) ;

__attribute__((used)) static int isl29501_probe(struct i2c_client *client,
     const struct i2c_device_id *id)
{
 struct iio_dev *indio_dev;
 struct isl29501_private *isl29501;
 int ret;

 indio_dev = devm_iio_device_alloc(&client->dev, sizeof(*isl29501));
 if (!indio_dev)
  return -ENOMEM;

 isl29501 = iio_priv(indio_dev);

 i2c_set_clientdata(client, indio_dev);
 isl29501->client = client;

 mutex_init(&isl29501->lock);

 ret = isl29501_init_chip(isl29501);
 if (ret < 0)
  return ret;

 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->dev.parent = &client->dev;
 indio_dev->channels = isl29501_channels;
 indio_dev->num_channels = ARRAY_SIZE(isl29501_channels);
 indio_dev->name = client->name;
 indio_dev->info = &isl29501_info;

 ret = devm_iio_triggered_buffer_setup(&client->dev, indio_dev,
           iio_pollfunc_store_time,
           isl29501_trigger_handler,
           ((void*)0));
 if (ret < 0) {
  dev_err(&client->dev, "unable to setup iio triggered buffer\n");
  return ret;
 }

 return devm_iio_device_register(&client->dev, indio_dev);
}
