
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct m62332_data {int vcc; int mutex; struct i2c_client* client; } ;
struct TYPE_4__ {TYPE_2__* parent; } ;
struct iio_dev {int * info; int modes; int channels; int num_channels; TYPE_1__ dev; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_5__ {int platform_data; } ;
struct i2c_client {TYPE_2__ dev; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 struct iio_dev* devm_iio_device_alloc (TYPE_2__*,int) ;
 int devm_regulator_get (TYPE_2__*,char*) ;
 int i2c_set_clientdata (struct i2c_client*,struct iio_dev*) ;
 int iio_device_register (struct iio_dev*) ;
 int iio_map_array_register (struct iio_dev*,int ) ;
 int iio_map_array_unregister (struct iio_dev*) ;
 struct m62332_data* iio_priv (struct iio_dev*) ;
 int m62332_channels ;
 int m62332_info ;
 int mutex_init (int *) ;

__attribute__((used)) static int m62332_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 struct m62332_data *data;
 struct iio_dev *indio_dev;
 int ret;

 indio_dev = devm_iio_device_alloc(&client->dev, sizeof(*data));
 if (!indio_dev)
  return -ENOMEM;

 data = iio_priv(indio_dev);
 i2c_set_clientdata(client, indio_dev);
 data->client = client;

 mutex_init(&data->mutex);

 data->vcc = devm_regulator_get(&client->dev, "VCC");
 if (IS_ERR(data->vcc))
  return PTR_ERR(data->vcc);


 indio_dev->dev.parent = &client->dev;

 indio_dev->num_channels = ARRAY_SIZE(m62332_channels);
 indio_dev->channels = m62332_channels;
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->info = &m62332_info;

 ret = iio_map_array_register(indio_dev, client->dev.platform_data);
 if (ret < 0)
  return ret;

 ret = iio_device_register(indio_dev);
 if (ret < 0)
  goto err;

 return 0;

err:
 iio_map_array_unregister(indio_dev);

 return ret;
}
