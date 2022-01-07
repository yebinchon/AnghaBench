
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct stmfts_data {int * ledvdd; scalar_t__ use_key; TYPE_2__* input; int prop; TYPE_8__* regulators; int cmd_done; int mutex; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; int irq; int adapter; } ;
struct TYPE_13__ {char* supply; } ;
struct TYPE_11__ {int bustype; } ;
struct TYPE_12__ {int close; int open; TYPE_1__ id; int name; } ;


 int ABS_DISTANCE ;
 int ABS_MT_ORIENTATION ;
 int ABS_MT_POSITION_X ;
 int ABS_MT_POSITION_Y ;
 int ABS_MT_PRESSURE ;
 int ABS_MT_TOUCH_MAJOR ;
 int ABS_MT_TOUCH_MINOR ;
 int ARRAY_SIZE (TYPE_8__*) ;
 int BUS_I2C ;
 int ENODEV ;
 int ENOMEM ;
 int EV_ABS ;
 int EV_KEY ;
 int GFP_KERNEL ;
 int I2C_FUNC_I2C ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int I2C_FUNC_SMBUS_I2C_BLOCK ;
 int INPUT_MT_DIRECT ;
 int IRQF_ONESHOT ;
 int IRQ_NOAUTOEN ;
 int KEY_BACK ;
 int KEY_MENU ;
 int STMFTS_DEV_NAME ;
 int STMFTS_MAX_FINGERS ;
 size_t STMFTS_REGULATOR_AVDD ;
 size_t STMFTS_REGULATOR_VDD ;
 int dev_dbg (int *,char*) ;
 int dev_warn (int *,char*) ;
 int device_enable_async_suspend (int *) ;
 scalar_t__ device_property_read_bool (int *,char*) ;
 int devm_add_action_or_reset (int *,int ,struct stmfts_data*) ;
 int devm_device_add_group (int *,int *) ;
 TYPE_2__* devm_input_allocate_device (int *) ;
 struct stmfts_data* devm_kzalloc (int *,int,int ) ;
 int devm_regulator_bulk_get (int *,int ,TYPE_8__*) ;
 int devm_request_threaded_irq (int *,int ,int *,int ,int ,char*,struct stmfts_data*) ;
 int i2c_check_functionality (int ,int) ;
 int i2c_set_clientdata (struct i2c_client*,struct stmfts_data*) ;
 int init_completion (int *) ;
 int input_mt_init_slots (TYPE_2__*,int ,int ) ;
 int input_register_device (TYPE_2__*) ;
 int input_set_abs_params (TYPE_2__*,int ,int ,int,int ,int ) ;
 int input_set_capability (TYPE_2__*,int ,int ) ;
 int input_set_drvdata (TYPE_2__*,struct stmfts_data*) ;
 int irq_set_status_flags (int ,int ) ;
 int mutex_init (int *) ;
 int pm_runtime_enable (int *) ;
 int stmfts_attribute_group ;
 int stmfts_enable_led (struct stmfts_data*) ;
 int stmfts_input_close ;
 int stmfts_input_open ;
 int stmfts_irq_handler ;
 int stmfts_power_off ;
 int stmfts_power_on (struct stmfts_data*) ;
 int touchscreen_parse_properties (TYPE_2__*,int,int *) ;

__attribute__((used)) static int stmfts_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 int err;
 struct stmfts_data *sdata;

 if (!i2c_check_functionality(client->adapter, I2C_FUNC_I2C |
      I2C_FUNC_SMBUS_BYTE_DATA |
      I2C_FUNC_SMBUS_I2C_BLOCK))
  return -ENODEV;

 sdata = devm_kzalloc(&client->dev, sizeof(*sdata), GFP_KERNEL);
 if (!sdata)
  return -ENOMEM;

 i2c_set_clientdata(client, sdata);

 sdata->client = client;
 mutex_init(&sdata->mutex);
 init_completion(&sdata->cmd_done);

 sdata->regulators[STMFTS_REGULATOR_VDD].supply = "vdd";
 sdata->regulators[STMFTS_REGULATOR_AVDD].supply = "avdd";
 err = devm_regulator_bulk_get(&client->dev,
          ARRAY_SIZE(sdata->regulators),
          sdata->regulators);
 if (err)
  return err;

 sdata->input = devm_input_allocate_device(&client->dev);
 if (!sdata->input)
  return -ENOMEM;

 sdata->input->name = STMFTS_DEV_NAME;
 sdata->input->id.bustype = BUS_I2C;
 sdata->input->open = stmfts_input_open;
 sdata->input->close = stmfts_input_close;

 input_set_capability(sdata->input, EV_ABS, ABS_MT_POSITION_X);
 input_set_capability(sdata->input, EV_ABS, ABS_MT_POSITION_Y);
 touchscreen_parse_properties(sdata->input, 1, &sdata->prop);

 input_set_abs_params(sdata->input, ABS_MT_TOUCH_MAJOR, 0, 255, 0, 0);
 input_set_abs_params(sdata->input, ABS_MT_TOUCH_MINOR, 0, 255, 0, 0);
 input_set_abs_params(sdata->input, ABS_MT_ORIENTATION, 0, 255, 0, 0);
 input_set_abs_params(sdata->input, ABS_MT_PRESSURE, 0, 255, 0, 0);
 input_set_abs_params(sdata->input, ABS_DISTANCE, 0, 255, 0, 0);

 sdata->use_key = device_property_read_bool(&client->dev,
         "touch-key-connected");
 if (sdata->use_key) {
  input_set_capability(sdata->input, EV_KEY, KEY_MENU);
  input_set_capability(sdata->input, EV_KEY, KEY_BACK);
 }

 err = input_mt_init_slots(sdata->input,
      STMFTS_MAX_FINGERS, INPUT_MT_DIRECT);
 if (err)
  return err;

 input_set_drvdata(sdata->input, sdata);
 irq_set_status_flags(client->irq, IRQ_NOAUTOEN);
 err = devm_request_threaded_irq(&client->dev, client->irq,
     ((void*)0), stmfts_irq_handler,
     IRQF_ONESHOT,
     "stmfts_irq", sdata);
 if (err)
  return err;

 dev_dbg(&client->dev, "initializing ST-Microelectronics FTS...\n");

 err = stmfts_power_on(sdata);
 if (err)
  return err;

 err = devm_add_action_or_reset(&client->dev, stmfts_power_off, sdata);
 if (err)
  return err;

 err = input_register_device(sdata->input);
 if (err)
  return err;

 if (sdata->use_key) {
  err = stmfts_enable_led(sdata);
  if (err) {






   dev_warn(&client->dev, "unable to use touchkey leds\n");
   sdata->ledvdd = ((void*)0);
  }
 }

 err = devm_device_add_group(&client->dev, &stmfts_attribute_group);
 if (err)
  return err;

 pm_runtime_enable(&client->dev);
 device_enable_async_suspend(&client->dev);

 return 0;
}
