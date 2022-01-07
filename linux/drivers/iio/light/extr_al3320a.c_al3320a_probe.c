
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * parent; } ;
struct iio_dev {int modes; int num_channels; int channels; int name; int * info; TYPE_1__ dev; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; } ;
struct al3320a_data {struct i2c_client* client; } ;


 int AL3320A_DRV_NAME ;
 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 int al3320a_channels ;
 int al3320a_info ;
 int al3320a_init (struct al3320a_data*) ;
 int dev_err (int *,char*) ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 int devm_iio_device_register (int *,struct iio_dev*) ;
 int i2c_set_clientdata (struct i2c_client*,struct iio_dev*) ;
 struct al3320a_data* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int al3320a_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct al3320a_data *data;
 struct iio_dev *indio_dev;
 int ret;

 indio_dev = devm_iio_device_alloc(&client->dev, sizeof(*data));
 if (!indio_dev)
  return -ENOMEM;

 data = iio_priv(indio_dev);
 i2c_set_clientdata(client, indio_dev);
 data->client = client;

 indio_dev->dev.parent = &client->dev;
 indio_dev->info = &al3320a_info;
 indio_dev->name = AL3320A_DRV_NAME;
 indio_dev->channels = al3320a_channels;
 indio_dev->num_channels = ARRAY_SIZE(al3320a_channels);
 indio_dev->modes = INDIO_DIRECT_MODE;

 ret = al3320a_init(data);
 if (ret < 0) {
  dev_err(&client->dev, "al3320a chip init failed\n");
  return ret;
 }
 return devm_iio_device_register(&client->dev, indio_dev);
}
