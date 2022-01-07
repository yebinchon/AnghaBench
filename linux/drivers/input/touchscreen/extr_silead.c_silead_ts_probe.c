
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct silead_ts_data {int gpio_power; TYPE_1__* regulators; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {scalar_t__ irq; int name; int adapter; struct device dev; } ;
struct TYPE_4__ {char* supply; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int ENODEV ;
 int ENOMEM ;
 int ENXIO ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int GPIOD_OUT_LOW ;
 int I2C_FUNC_I2C ;
 int I2C_FUNC_SMBUS_READ_I2C_BLOCK ;
 int I2C_FUNC_SMBUS_WRITE_I2C_BLOCK ;
 int IRQF_ONESHOT ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (struct device*,char*,...) ;
 int devm_add_action_or_reset (struct device*,int ,struct silead_ts_data*) ;
 int devm_gpiod_get_optional (struct device*,char*,int ) ;
 struct silead_ts_data* devm_kzalloc (struct device*,int,int ) ;
 int devm_regulator_bulk_get (struct device*,int ,TYPE_1__*) ;
 int devm_request_threaded_irq (struct device*,scalar_t__,int *,int ,int ,int ,struct silead_ts_data*) ;
 int i2c_check_functionality (int ,int) ;
 int i2c_set_clientdata (struct i2c_client*,struct silead_ts_data*) ;
 int regulator_bulk_enable (int ,TYPE_1__*) ;
 int silead_disable_regulator ;
 int silead_ts_read_props (struct i2c_client*) ;
 int silead_ts_request_input_dev (struct silead_ts_data*) ;
 int silead_ts_set_default_fw_name (struct silead_ts_data*,struct i2c_device_id const*) ;
 int silead_ts_setup (struct i2c_client*) ;
 int silead_ts_threaded_irq_handler ;

__attribute__((used)) static int silead_ts_probe(struct i2c_client *client,
      const struct i2c_device_id *id)
{
 struct silead_ts_data *data;
 struct device *dev = &client->dev;
 int error;

 if (!i2c_check_functionality(client->adapter,
         I2C_FUNC_I2C |
         I2C_FUNC_SMBUS_READ_I2C_BLOCK |
         I2C_FUNC_SMBUS_WRITE_I2C_BLOCK)) {
  dev_err(dev, "I2C functionality check failed\n");
  return -ENXIO;
 }

 data = devm_kzalloc(dev, sizeof(*data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 i2c_set_clientdata(client, data);
 data->client = client;

 error = silead_ts_set_default_fw_name(data, id);
 if (error)
  return error;

 silead_ts_read_props(client);


 if (client->irq <= 0)
  return -ENODEV;

 data->regulators[0].supply = "vddio";
 data->regulators[1].supply = "avdd";
 error = devm_regulator_bulk_get(dev, ARRAY_SIZE(data->regulators),
     data->regulators);
 if (error)
  return error;





 error = regulator_bulk_enable(ARRAY_SIZE(data->regulators),
          data->regulators);
 if (error)
  return error;

 error = devm_add_action_or_reset(dev, silead_disable_regulator, data);
 if (error)
  return error;


 data->gpio_power = devm_gpiod_get_optional(dev, "power", GPIOD_OUT_LOW);
 if (IS_ERR(data->gpio_power)) {
  if (PTR_ERR(data->gpio_power) != -EPROBE_DEFER)
   dev_err(dev, "Shutdown GPIO request failed\n");
  return PTR_ERR(data->gpio_power);
 }

 error = silead_ts_setup(client);
 if (error)
  return error;

 error = silead_ts_request_input_dev(data);
 if (error)
  return error;

 error = devm_request_threaded_irq(dev, client->irq,
       ((void*)0), silead_ts_threaded_irq_handler,
       IRQF_ONESHOT, client->name, data);
 if (error) {
  if (error != -EPROBE_DEFER)
   dev_err(dev, "IRQ request failed %d\n", error);
  return error;
 }

 return 0;
}
