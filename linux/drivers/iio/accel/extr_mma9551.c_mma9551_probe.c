
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mma9551_data {int mutex; struct i2c_client* client; } ;
struct TYPE_2__ {int * parent; } ;
struct iio_dev {char const* name; int * info; int modes; int num_channels; int channels; TYPE_1__ dev; } ;
struct i2c_device_id {char* name; } ;
struct i2c_client {int dev; } ;


 scalar_t__ ACPI_HANDLE (int *) ;
 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 int MMA9551_AUTO_SUSPEND_DELAY_MS ;
 int dev_err (int *,char*) ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 int i2c_set_clientdata (struct i2c_client*,struct iio_dev*) ;
 int iio_device_register (struct iio_dev*) ;
 struct mma9551_data* iio_priv (struct iio_dev*) ;
 int mma9551_channels ;
 int mma9551_gpio_probe (struct iio_dev*) ;
 int mma9551_info ;
 int mma9551_init (struct mma9551_data*) ;
 char* mma9551_match_acpi_device (int *) ;
 int mma9551_set_device_state (struct i2c_client*,int) ;
 int mutex_init (int *) ;
 int pm_runtime_enable (int *) ;
 int pm_runtime_set_active (int *) ;
 int pm_runtime_set_autosuspend_delay (int *,int ) ;
 int pm_runtime_use_autosuspend (int *) ;

__attribute__((used)) static int mma9551_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct mma9551_data *data;
 struct iio_dev *indio_dev;
 const char *name = ((void*)0);
 int ret;

 indio_dev = devm_iio_device_alloc(&client->dev, sizeof(*data));
 if (!indio_dev)
  return -ENOMEM;

 data = iio_priv(indio_dev);
 i2c_set_clientdata(client, indio_dev);
 data->client = client;

 if (id)
  name = id->name;
 else if (ACPI_HANDLE(&client->dev))
  name = mma9551_match_acpi_device(&client->dev);

 ret = mma9551_init(data);
 if (ret < 0)
  return ret;

 mutex_init(&data->mutex);

 indio_dev->dev.parent = &client->dev;
 indio_dev->channels = mma9551_channels;
 indio_dev->num_channels = ARRAY_SIZE(mma9551_channels);
 indio_dev->name = name;
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->info = &mma9551_info;

 ret = mma9551_gpio_probe(indio_dev);
 if (ret < 0)
  goto out_poweroff;

 ret = pm_runtime_set_active(&client->dev);
 if (ret < 0)
  goto out_poweroff;

 pm_runtime_enable(&client->dev);
 pm_runtime_set_autosuspend_delay(&client->dev,
      MMA9551_AUTO_SUSPEND_DELAY_MS);
 pm_runtime_use_autosuspend(&client->dev);

 ret = iio_device_register(indio_dev);
 if (ret < 0) {
  dev_err(&client->dev, "unable to register iio device\n");
  goto out_poweroff;
 }

 return 0;

out_poweroff:
 mma9551_set_device_state(client, 0);

 return ret;
}
