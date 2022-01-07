
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mma7660_data {int mode; int lock; struct i2c_client* client; } ;
struct TYPE_2__ {int * parent; } ;
struct iio_dev {int num_channels; int channels; int modes; int name; int * info; TYPE_1__ dev; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 int MMA7660_DRIVER_NAME ;
 int MMA7660_MODE_ACTIVE ;
 int MMA7660_MODE_STANDBY ;
 int dev_err (int *,char*) ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 int i2c_set_clientdata (struct i2c_client*,struct iio_dev*) ;
 int iio_device_register (struct iio_dev*) ;
 struct mma7660_data* iio_priv (struct iio_dev*) ;
 int mma7660_channels ;
 int mma7660_info ;
 int mma7660_set_mode (struct mma7660_data*,int ) ;
 int mutex_init (int *) ;

__attribute__((used)) static int mma7660_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 int ret;
 struct iio_dev *indio_dev;
 struct mma7660_data *data;

 indio_dev = devm_iio_device_alloc(&client->dev, sizeof(*data));
 if (!indio_dev) {
  dev_err(&client->dev, "iio allocation failed!\n");
  return -ENOMEM;
 }

 data = iio_priv(indio_dev);
 data->client = client;
 i2c_set_clientdata(client, indio_dev);
 mutex_init(&data->lock);
 data->mode = MMA7660_MODE_STANDBY;

 indio_dev->dev.parent = &client->dev;
 indio_dev->info = &mma7660_info;
 indio_dev->name = MMA7660_DRIVER_NAME;
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->channels = mma7660_channels;
 indio_dev->num_channels = ARRAY_SIZE(mma7660_channels);

 ret = mma7660_set_mode(data, MMA7660_MODE_ACTIVE);
 if (ret < 0)
  return ret;

 ret = iio_device_register(indio_dev);
 if (ret < 0) {
  dev_err(&client->dev, "device_register failed\n");
  mma7660_set_mode(data, MMA7660_MODE_STANDBY);
 }

 return ret;
}
