
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; int adapter; int addr; } ;
struct goodix_ts_data {int cfg_name; int id; scalar_t__ gpiod_rst; scalar_t__ gpiod_int; int chip; int avdd28; int vddio; int contact_size; int firmware_loading_complete; struct i2c_client* client; } ;


 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int GOODIX_CONTACT_SIZE ;
 int I2C_FUNC_I2C ;
 int THIS_MODULE ;
 int dev_dbg (int *,char*,int ) ;
 int dev_err (int *,char*,...) ;
 int devm_add_action_or_reset (int *,int ,struct goodix_ts_data*) ;
 int devm_kasprintf (int *,int ,char*,int ) ;
 struct goodix_ts_data* devm_kzalloc (int *,int,int ) ;
 int goodix_config_cb ;
 int goodix_configure_dev (struct goodix_ts_data*) ;
 int goodix_disable_regulators ;
 int goodix_get_chip_data (int ) ;
 int goodix_get_gpio_config (struct goodix_ts_data*) ;
 int goodix_i2c_test (struct i2c_client*) ;
 int goodix_read_version (struct goodix_ts_data*) ;
 int goodix_reset (struct goodix_ts_data*) ;
 int i2c_check_functionality (int ,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct goodix_ts_data*) ;
 int init_completion (int *) ;
 int regulator_disable (int ) ;
 int regulator_enable (int ) ;
 int request_firmware_nowait (int ,int,int ,int *,int ,struct goodix_ts_data*,int ) ;

__attribute__((used)) static int goodix_ts_probe(struct i2c_client *client,
      const struct i2c_device_id *id)
{
 struct goodix_ts_data *ts;
 int error;

 dev_dbg(&client->dev, "I2C Address: 0x%02x\n", client->addr);

 if (!i2c_check_functionality(client->adapter, I2C_FUNC_I2C)) {
  dev_err(&client->dev, "I2C check functionality failed.\n");
  return -ENXIO;
 }

 ts = devm_kzalloc(&client->dev, sizeof(*ts), GFP_KERNEL);
 if (!ts)
  return -ENOMEM;

 ts->client = client;
 i2c_set_clientdata(client, ts);
 init_completion(&ts->firmware_loading_complete);
 ts->contact_size = GOODIX_CONTACT_SIZE;

 error = goodix_get_gpio_config(ts);
 if (error)
  return error;


 error = regulator_enable(ts->avdd28);
 if (error) {
  dev_err(&client->dev,
   "Failed to enable AVDD28 regulator: %d\n",
   error);
  return error;
 }

 error = regulator_enable(ts->vddio);
 if (error) {
  dev_err(&client->dev,
   "Failed to enable VDDIO regulator: %d\n",
   error);
  regulator_disable(ts->avdd28);
  return error;
 }

 error = devm_add_action_or_reset(&client->dev,
      goodix_disable_regulators, ts);
 if (error)
  return error;

 if (ts->gpiod_int && ts->gpiod_rst) {

  error = goodix_reset(ts);
  if (error) {
   dev_err(&client->dev, "Controller reset failed.\n");
   return error;
  }
 }

 error = goodix_i2c_test(client);
 if (error) {
  dev_err(&client->dev, "I2C communication failure: %d\n", error);
  return error;
 }

 error = goodix_read_version(ts);
 if (error) {
  dev_err(&client->dev, "Read version failed.\n");
  return error;
 }

 ts->chip = goodix_get_chip_data(ts->id);

 if (ts->gpiod_int && ts->gpiod_rst) {

  ts->cfg_name = devm_kasprintf(&client->dev, GFP_KERNEL,
           "goodix_%d_cfg.bin", ts->id);
  if (!ts->cfg_name)
   return -ENOMEM;

  error = request_firmware_nowait(THIS_MODULE, 1, ts->cfg_name,
      &client->dev, GFP_KERNEL, ts,
      goodix_config_cb);
  if (error) {
   dev_err(&client->dev,
    "Failed to invoke firmware loader: %d\n",
    error);
   return error;
  }

  return 0;
 } else {
  error = goodix_configure_dev(ts);
  if (error)
   return error;
 }

 return 0;
}
