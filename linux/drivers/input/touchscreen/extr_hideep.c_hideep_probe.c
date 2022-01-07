
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_device_id {int dummy; } ;
struct i2c_client {int irq; int dev; int name; int adapter; } ;
struct hideep_ts {void* reset_gpio; void* vcc_vid; void* vcc_vdd; void* reg; int dev_mutex; struct i2c_client* client; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIOD_OUT_HIGH ;
 int I2C_FUNC_I2C ;
 int IRQF_ONESHOT ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int dev_err (int *,char*,...) ;
 int devm_add_action_or_reset (int *,int ,struct hideep_ts*) ;
 int devm_device_add_group (int *,int *) ;
 void* devm_gpiod_get_optional (int *,char*,int ) ;
 struct hideep_ts* devm_kzalloc (int *,int,int ) ;
 void* devm_regmap_init_i2c (struct i2c_client*,int *) ;
 void* devm_regulator_get (int *,char*) ;
 int devm_request_threaded_irq (int *,int,int *,int ,int ,int ,struct hideep_ts*) ;
 int hideep_init_input (struct hideep_ts*) ;
 int hideep_irq ;
 int hideep_load_dwz (struct hideep_ts*) ;
 int hideep_power_off ;
 int hideep_power_on (struct hideep_ts*) ;
 int hideep_regmap_config ;
 int hideep_ts_attr_group ;
 int i2c_check_functionality (int ,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct hideep_ts*) ;
 int mutex_init (int *) ;

__attribute__((used)) static int hideep_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 struct hideep_ts *ts;
 int error;


 if (!i2c_check_functionality(client->adapter, I2C_FUNC_I2C)) {
  dev_err(&client->dev, "check i2c device error");
  return -ENODEV;
 }

 if (client->irq <= 0) {
  dev_err(&client->dev, "missing irq: %d\n", client->irq);
  return -EINVAL;
 }

 ts = devm_kzalloc(&client->dev, sizeof(*ts), GFP_KERNEL);
 if (!ts)
  return -ENOMEM;

 ts->client = client;
 i2c_set_clientdata(client, ts);
 mutex_init(&ts->dev_mutex);

 ts->reg = devm_regmap_init_i2c(client, &hideep_regmap_config);
 if (IS_ERR(ts->reg)) {
  error = PTR_ERR(ts->reg);
  dev_err(&client->dev,
   "failed to initialize regmap: %d\n", error);
  return error;
 }

 ts->vcc_vdd = devm_regulator_get(&client->dev, "vdd");
 if (IS_ERR(ts->vcc_vdd))
  return PTR_ERR(ts->vcc_vdd);

 ts->vcc_vid = devm_regulator_get(&client->dev, "vid");
 if (IS_ERR(ts->vcc_vid))
  return PTR_ERR(ts->vcc_vid);

 ts->reset_gpio = devm_gpiod_get_optional(&client->dev,
       "reset", GPIOD_OUT_HIGH);
 if (IS_ERR(ts->reset_gpio))
  return PTR_ERR(ts->reset_gpio);

 error = hideep_power_on(ts);
 if (error) {
  dev_err(&client->dev, "power on failed: %d\n", error);
  return error;
 }

 error = devm_add_action_or_reset(&client->dev, hideep_power_off, ts);
 if (error)
  return error;

 error = hideep_load_dwz(ts);
 if (error) {
  dev_err(&client->dev, "failed to load dwz: %d", error);
  return error;
 }

 error = hideep_init_input(ts);
 if (error)
  return error;

 error = devm_request_threaded_irq(&client->dev, client->irq,
       ((void*)0), hideep_irq, IRQF_ONESHOT,
       client->name, ts);
 if (error) {
  dev_err(&client->dev, "failed to request irq %d: %d\n",
   client->irq, error);
  return error;
 }

 error = devm_device_add_group(&client->dev, &hideep_ts_attr_group);
 if (error) {
  dev_err(&client->dev,
   "failed to add sysfs attributes: %d\n", error);
  return error;
 }

 return 0;
}
