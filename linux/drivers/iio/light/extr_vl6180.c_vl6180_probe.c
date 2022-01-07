
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vl6180_data {int lock; struct i2c_client* client; } ;
struct TYPE_2__ {int * parent; } ;
struct iio_dev {int modes; int name; int num_channels; int channels; int * info; TYPE_1__ dev; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 int VL6180_DRV_NAME ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 int devm_iio_device_register (int *,struct iio_dev*) ;
 int i2c_set_clientdata (struct i2c_client*,struct iio_dev*) ;
 struct vl6180_data* iio_priv (struct iio_dev*) ;
 int mutex_init (int *) ;
 int vl6180_channels ;
 int vl6180_info ;
 int vl6180_init (struct vl6180_data*) ;

__attribute__((used)) static int vl6180_probe(struct i2c_client *client,
     const struct i2c_device_id *id)
{
 struct vl6180_data *data;
 struct iio_dev *indio_dev;
 int ret;

 indio_dev = devm_iio_device_alloc(&client->dev, sizeof(*data));
 if (!indio_dev)
  return -ENOMEM;

 data = iio_priv(indio_dev);
 i2c_set_clientdata(client, indio_dev);
 data->client = client;
 mutex_init(&data->lock);

 indio_dev->dev.parent = &client->dev;
 indio_dev->info = &vl6180_info;
 indio_dev->channels = vl6180_channels;
 indio_dev->num_channels = ARRAY_SIZE(vl6180_channels);
 indio_dev->name = VL6180_DRV_NAME;
 indio_dev->modes = INDIO_DIRECT_MODE;

 ret = vl6180_init(data);
 if (ret < 0)
  return ret;

 return devm_iio_device_register(&client->dev, indio_dev);
}
