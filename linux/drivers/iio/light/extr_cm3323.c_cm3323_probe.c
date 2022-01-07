
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * parent; } ;
struct iio_dev {int modes; int num_channels; int channels; int name; int * info; TYPE_1__ dev; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; } ;
struct cm3323_data {int mutex; struct i2c_client* client; } ;


 int ARRAY_SIZE (int ) ;
 int CM3323_DRV_NAME ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 int cm3323_channels ;
 int cm3323_disable ;
 int cm3323_info ;
 int cm3323_init (struct iio_dev*) ;
 int dev_err (int *,char*) ;
 int devm_add_action_or_reset (int *,int ,struct iio_dev*) ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 int devm_iio_device_register (int *,struct iio_dev*) ;
 int i2c_set_clientdata (struct i2c_client*,struct iio_dev*) ;
 struct cm3323_data* iio_priv (struct iio_dev*) ;
 int mutex_init (int *) ;

__attribute__((used)) static int cm3323_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 struct cm3323_data *data;
 struct iio_dev *indio_dev;
 int ret;

 indio_dev = devm_iio_device_alloc(&client->dev, sizeof(*data));
 if (!indio_dev)
  return -ENOMEM;

 data = iio_priv(indio_dev);
 i2c_set_clientdata(client, indio_dev);
 data->client = client;

 mutex_init(&data->mutex);

 indio_dev->dev.parent = &client->dev;
 indio_dev->info = &cm3323_info;
 indio_dev->name = CM3323_DRV_NAME;
 indio_dev->channels = cm3323_channels;
 indio_dev->num_channels = ARRAY_SIZE(cm3323_channels);
 indio_dev->modes = INDIO_DIRECT_MODE;

 ret = cm3323_init(indio_dev);
 if (ret < 0) {
  dev_err(&client->dev, "cm3323 chip init failed\n");
  return ret;
 }

 ret = devm_add_action_or_reset(&client->dev, cm3323_disable, indio_dev);
 if (ret < 0)
  return ret;

 return devm_iio_device_register(&client->dev, indio_dev);
}
