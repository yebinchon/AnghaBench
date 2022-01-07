
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * parent; } ;
struct iio_dev {int num_channels; int channels; int modes; int name; int * info; TYPE_1__ dev; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; } ;
struct ams_iaqcore_data {int lock; scalar_t__ last_update; struct i2c_client* client; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 scalar_t__ HZ ;
 int INDIO_DIRECT_MODE ;
 int ams_iaqcore_channels ;
 int ams_iaqcore_info ;
 int dev_name (int *) ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 int devm_iio_device_register (int *,struct iio_dev*) ;
 int i2c_set_clientdata (struct i2c_client*,struct iio_dev*) ;
 struct ams_iaqcore_data* iio_priv (struct iio_dev*) ;
 scalar_t__ jiffies ;
 int mutex_init (int *) ;

__attribute__((used)) static int ams_iaqcore_probe(struct i2c_client *client,
        const struct i2c_device_id *id)
{
 struct iio_dev *indio_dev;
 struct ams_iaqcore_data *data;

 indio_dev = devm_iio_device_alloc(&client->dev, sizeof(*data));
 if (!indio_dev)
  return -ENOMEM;

 data = iio_priv(indio_dev);
 i2c_set_clientdata(client, indio_dev);
 data->client = client;


 data->last_update = jiffies - HZ;
 mutex_init(&data->lock);

 indio_dev->dev.parent = &client->dev;
 indio_dev->info = &ams_iaqcore_info;
 indio_dev->name = dev_name(&client->dev);
 indio_dev->modes = INDIO_DIRECT_MODE;

 indio_dev->channels = ams_iaqcore_channels;
 indio_dev->num_channels = ARRAY_SIZE(ams_iaqcore_channels);

 return devm_iio_device_register(&client->dev, indio_dev);
}
