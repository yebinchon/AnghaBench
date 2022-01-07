
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vcnl4035_data {struct regmap* regmap; struct i2c_client* client; } ;
struct regmap {int dummy; } ;
struct TYPE_2__ {int * parent; } ;
struct iio_dev {int modes; int num_channels; int channels; int name; int * info; TYPE_1__ dev; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {scalar_t__ irq; int dev; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;
 int VCNL4035_DRV_NAME ;
 int VCNL4035_MODE_ALS_DISABLE ;
 int VCNL4035_SLEEP_DELAY_MS ;
 int dev_err (int *,char*) ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 struct regmap* devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int i2c_set_clientdata (struct i2c_client*,struct iio_dev*) ;
 int iio_device_register (struct iio_dev*) ;
 struct vcnl4035_data* iio_priv (struct iio_dev*) ;
 int pm_runtime_enable (int *) ;
 int pm_runtime_set_active (int *) ;
 int pm_runtime_set_autosuspend_delay (int *,int ) ;
 int pm_runtime_use_autosuspend (int *) ;
 int vcnl4035_channels ;
 int vcnl4035_info ;
 int vcnl4035_init (struct vcnl4035_data*) ;
 int vcnl4035_probe_trigger (struct iio_dev*) ;
 int vcnl4035_regmap_config ;
 int vcnl4035_set_als_power_state (struct vcnl4035_data*,int ) ;

__attribute__((used)) static int vcnl4035_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct vcnl4035_data *data;
 struct iio_dev *indio_dev;
 struct regmap *regmap;
 int ret;

 indio_dev = devm_iio_device_alloc(&client->dev, sizeof(*data));
 if (!indio_dev)
  return -ENOMEM;

 regmap = devm_regmap_init_i2c(client, &vcnl4035_regmap_config);
 if (IS_ERR(regmap)) {
  dev_err(&client->dev, "regmap_init failed!\n");
  return PTR_ERR(regmap);
 }

 data = iio_priv(indio_dev);
 i2c_set_clientdata(client, indio_dev);
 data->client = client;
 data->regmap = regmap;

 indio_dev->dev.parent = &client->dev;
 indio_dev->info = &vcnl4035_info;
 indio_dev->name = VCNL4035_DRV_NAME;
 indio_dev->channels = vcnl4035_channels;
 indio_dev->num_channels = ARRAY_SIZE(vcnl4035_channels);
 indio_dev->modes = INDIO_DIRECT_MODE;

 ret = vcnl4035_init(data);
 if (ret < 0) {
  dev_err(&client->dev, "vcnl4035 chip init failed\n");
  return ret;
 }

 if (client->irq > 0) {
  ret = vcnl4035_probe_trigger(indio_dev);
  if (ret < 0) {
   dev_err(&client->dev, "vcnl4035 unable init trigger\n");
   goto fail_poweroff;
  }
 }

 ret = pm_runtime_set_active(&client->dev);
 if (ret < 0)
  goto fail_poweroff;

 ret = iio_device_register(indio_dev);
 if (ret < 0)
  goto fail_poweroff;

 pm_runtime_enable(&client->dev);
 pm_runtime_set_autosuspend_delay(&client->dev, VCNL4035_SLEEP_DELAY_MS);
 pm_runtime_use_autosuspend(&client->dev);

 return 0;

fail_poweroff:
 vcnl4035_set_als_power_state(data, VCNL4035_MODE_ALS_DISABLE);
 return ret;
}
