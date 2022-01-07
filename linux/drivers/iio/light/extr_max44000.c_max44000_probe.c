
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct max44000_data {int regmap; int lock; } ;
struct TYPE_2__ {int * parent; } ;
struct iio_dev {int num_channels; int channels; int name; int * info; TYPE_1__ dev; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 scalar_t__ IS_ERR (int ) ;
 int MAX44000_CFG_MODE_ALS_PRX ;
 int MAX44000_CFG_TRIM ;
 int MAX44000_DRV_NAME ;
 int MAX44000_LED_CURRENT_DEFAULT ;
 int MAX44000_REG_CFG_MAIN ;
 int MAX44000_REG_CFG_RX ;
 int MAX44000_REG_CFG_RX_DEFAULT ;
 int MAX44000_REG_STATUS ;
 int PTR_ERR (int ) ;
 int dev_err (int *,char*,...) ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int i2c_set_clientdata (struct i2c_client*,struct iio_dev*) ;
 int iio_device_register (struct iio_dev*) ;
 struct max44000_data* iio_priv (struct iio_dev*) ;
 int iio_triggered_buffer_setup (struct iio_dev*,int *,int ,int *) ;
 int max44000_channels ;
 int max44000_info ;
 int max44000_regmap_config ;
 int max44000_trigger_handler ;
 int max44000_write_led_current_raw (struct max44000_data*,int ) ;
 int mutex_init (int *) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int max44000_probe(struct i2c_client *client,
     const struct i2c_device_id *id)
{
 struct max44000_data *data;
 struct iio_dev *indio_dev;
 int ret, reg;

 indio_dev = devm_iio_device_alloc(&client->dev, sizeof(*data));
 if (!indio_dev)
  return -ENOMEM;
 data = iio_priv(indio_dev);
 data->regmap = devm_regmap_init_i2c(client, &max44000_regmap_config);
 if (IS_ERR(data->regmap)) {
  dev_err(&client->dev, "regmap_init failed!\n");
  return PTR_ERR(data->regmap);
 }

 i2c_set_clientdata(client, indio_dev);
 mutex_init(&data->lock);
 indio_dev->dev.parent = &client->dev;
 indio_dev->info = &max44000_info;
 indio_dev->name = MAX44000_DRV_NAME;
 indio_dev->channels = max44000_channels;
 indio_dev->num_channels = ARRAY_SIZE(max44000_channels);
 ret = regmap_write(data->regmap, MAX44000_REG_CFG_RX,
      MAX44000_REG_CFG_RX_DEFAULT);
 if (ret < 0) {
  dev_err(&client->dev, "failed to write default CFG_RX: %d\n",
   ret);
  return ret;
 }





 ret = max44000_write_led_current_raw(data, MAX44000_LED_CURRENT_DEFAULT);
 if (ret < 0) {
  dev_err(&client->dev, "failed to write init config: %d\n", ret);
  return ret;
 }


 reg = MAX44000_CFG_TRIM | MAX44000_CFG_MODE_ALS_PRX;
 ret = regmap_write(data->regmap, MAX44000_REG_CFG_MAIN, reg);
 if (ret < 0) {
  dev_err(&client->dev, "failed to write init config: %d\n", ret);
  return ret;
 }


 ret = regmap_read(data->regmap, MAX44000_REG_STATUS, &reg);
 if (ret < 0) {
  dev_err(&client->dev, "failed to read init status: %d\n", ret);
  return ret;
 }

 ret = iio_triggered_buffer_setup(indio_dev, ((void*)0), max44000_trigger_handler, ((void*)0));
 if (ret < 0) {
  dev_err(&client->dev, "iio triggered buffer setup failed\n");
  return ret;
 }

 return iio_device_register(indio_dev);
}
