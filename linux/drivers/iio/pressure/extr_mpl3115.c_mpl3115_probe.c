
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mpl3115_data {int ctrl_reg1; int lock; struct i2c_client* client; } ;
struct TYPE_2__ {int * parent; } ;
struct iio_dev {int num_channels; int channels; int modes; TYPE_1__ dev; int name; int * info; } ;
struct i2c_device_id {int name; } ;
struct i2c_client {int dev; } ;


 int ARRAY_SIZE (int ) ;
 int ENODEV ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 int MPL3115_CTRL_OS_258MS ;
 int MPL3115_CTRL_REG1 ;
 int MPL3115_CTRL_RESET ;
 int MPL3115_DEVICE_ID ;
 int MPL3115_WHO_AM_I ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 int i2c_set_clientdata (struct i2c_client*,struct iio_dev*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int ) ;
 int iio_device_register (struct iio_dev*) ;
 struct mpl3115_data* iio_priv (struct iio_dev*) ;
 int iio_triggered_buffer_cleanup (struct iio_dev*) ;
 int iio_triggered_buffer_setup (struct iio_dev*,int *,int ,int *) ;
 int mpl3115_channels ;
 int mpl3115_info ;
 int mpl3115_trigger_handler ;
 int msleep (int) ;
 int mutex_init (int *) ;

__attribute__((used)) static int mpl3115_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct mpl3115_data *data;
 struct iio_dev *indio_dev;
 int ret;

 ret = i2c_smbus_read_byte_data(client, MPL3115_WHO_AM_I);
 if (ret < 0)
  return ret;
 if (ret != MPL3115_DEVICE_ID)
  return -ENODEV;

 indio_dev = devm_iio_device_alloc(&client->dev, sizeof(*data));
 if (!indio_dev)
  return -ENOMEM;

 data = iio_priv(indio_dev);
 data->client = client;
 mutex_init(&data->lock);

 i2c_set_clientdata(client, indio_dev);
 indio_dev->info = &mpl3115_info;
 indio_dev->name = id->name;
 indio_dev->dev.parent = &client->dev;
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->channels = mpl3115_channels;
 indio_dev->num_channels = ARRAY_SIZE(mpl3115_channels);


 i2c_smbus_write_byte_data(client, MPL3115_CTRL_REG1,
  MPL3115_CTRL_RESET);
 msleep(50);

 data->ctrl_reg1 = MPL3115_CTRL_OS_258MS;
 ret = i2c_smbus_write_byte_data(client, MPL3115_CTRL_REG1,
  data->ctrl_reg1);
 if (ret < 0)
  return ret;

 ret = iio_triggered_buffer_setup(indio_dev, ((void*)0),
  mpl3115_trigger_handler, ((void*)0));
 if (ret < 0)
  return ret;

 ret = iio_device_register(indio_dev);
 if (ret < 0)
  goto buffer_cleanup;
 return 0;

buffer_cleanup:
 iio_triggered_buffer_cleanup(indio_dev);
 return ret;
}
