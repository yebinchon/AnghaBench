
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct s6sy761_data {TYPE_2__* input; int tx_channel; int prop; TYPE_8__* regulators; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; int irq; int adapter; } ;
struct TYPE_13__ {char* supply; } ;
struct TYPE_11__ {int bustype; } ;
struct TYPE_12__ {int close; int open; TYPE_1__ id; int name; } ;


 int ABS_MT_POSITION_X ;
 int ABS_MT_POSITION_Y ;
 int ABS_MT_PRESSURE ;
 int ABS_MT_TOUCH_MAJOR ;
 int ABS_MT_TOUCH_MINOR ;
 int ABS_X ;
 int ABS_Y ;
 int ARRAY_SIZE (TYPE_8__*) ;
 int BUS_I2C ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_I2C ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int I2C_FUNC_SMBUS_I2C_BLOCK ;
 int INPUT_MT_DIRECT ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_LOW ;
 int S6SY761_DEV_NAME ;
 size_t S6SY761_REGULATOR_AVDD ;
 size_t S6SY761_REGULATOR_VDD ;
 int dev_warn (int *,char*) ;
 int devm_add_action_or_reset (int *,int ,struct s6sy761_data*) ;
 int devm_device_add_group (int *,int *) ;
 TYPE_2__* devm_input_allocate_device (int *) ;
 struct s6sy761_data* devm_kzalloc (int *,int,int ) ;
 int devm_regulator_bulk_get (int *,int ,TYPE_8__*) ;
 int devm_request_threaded_irq (int *,int ,int *,int ,int,char*,struct s6sy761_data*) ;
 int i2c_check_functionality (int ,int) ;
 int i2c_set_clientdata (struct i2c_client*,struct s6sy761_data*) ;
 int input_abs_get_max (TYPE_2__*,int ) ;
 int input_mt_init_slots (TYPE_2__*,int ,int ) ;
 int input_register_device (TYPE_2__*) ;
 int input_set_abs_params (TYPE_2__*,int ,int ,int,int ,int ) ;
 int input_set_drvdata (TYPE_2__*,struct s6sy761_data*) ;
 int pm_runtime_enable (int *) ;
 int s6sy761_attribute_group ;
 int s6sy761_hw_init (struct s6sy761_data*,unsigned int*,unsigned int*) ;
 int s6sy761_input_close ;
 int s6sy761_input_open ;
 int s6sy761_irq_handler ;
 int s6sy761_power_off ;
 int touchscreen_parse_properties (TYPE_2__*,int,int *) ;

__attribute__((used)) static int s6sy761_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct s6sy761_data *sdata;
 unsigned int max_x, max_y;
 int err;

 if (!i2c_check_functionality(client->adapter, I2C_FUNC_I2C |
      I2C_FUNC_SMBUS_BYTE_DATA |
      I2C_FUNC_SMBUS_I2C_BLOCK))
  return -ENODEV;

 sdata = devm_kzalloc(&client->dev, sizeof(*sdata), GFP_KERNEL);
 if (!sdata)
  return -ENOMEM;

 i2c_set_clientdata(client, sdata);
 sdata->client = client;

 sdata->regulators[S6SY761_REGULATOR_VDD].supply = "vdd";
 sdata->regulators[S6SY761_REGULATOR_AVDD].supply = "avdd";
 err = devm_regulator_bulk_get(&client->dev,
          ARRAY_SIZE(sdata->regulators),
          sdata->regulators);
 if (err)
  return err;

 err = devm_add_action_or_reset(&client->dev, s6sy761_power_off, sdata);
 if (err)
  return err;

 err = s6sy761_hw_init(sdata, &max_x, &max_y);
 if (err)
  return err;

 sdata->input = devm_input_allocate_device(&client->dev);
 if (!sdata->input)
  return -ENOMEM;

 sdata->input->name = S6SY761_DEV_NAME;
 sdata->input->id.bustype = BUS_I2C;
 sdata->input->open = s6sy761_input_open;
 sdata->input->close = s6sy761_input_close;

 input_set_abs_params(sdata->input, ABS_MT_POSITION_X, 0, max_x, 0, 0);
 input_set_abs_params(sdata->input, ABS_MT_POSITION_Y, 0, max_y, 0, 0);
 input_set_abs_params(sdata->input, ABS_MT_TOUCH_MAJOR, 0, 255, 0, 0);
 input_set_abs_params(sdata->input, ABS_MT_TOUCH_MINOR, 0, 255, 0, 0);
 input_set_abs_params(sdata->input, ABS_MT_TOUCH_MAJOR, 0, 255, 0, 0);
 input_set_abs_params(sdata->input, ABS_MT_TOUCH_MINOR, 0, 255, 0, 0);
 input_set_abs_params(sdata->input, ABS_MT_PRESSURE, 0, 255, 0, 0);

 touchscreen_parse_properties(sdata->input, 1, &sdata->prop);

 if (!input_abs_get_max(sdata->input, ABS_X) ||
     !input_abs_get_max(sdata->input, ABS_Y)) {
  dev_warn(&client->dev, "the axis have not been set\n");
 }

 err = input_mt_init_slots(sdata->input, sdata->tx_channel,
      INPUT_MT_DIRECT);
 if (err)
  return err;

 input_set_drvdata(sdata->input, sdata);

 err = input_register_device(sdata->input);
 if (err)
  return err;

 err = devm_request_threaded_irq(&client->dev, client->irq, ((void*)0),
     s6sy761_irq_handler,
     IRQF_TRIGGER_LOW | IRQF_ONESHOT,
     "s6sy761_irq", sdata);
 if (err)
  return err;

 err = devm_device_add_group(&client->dev, &s6sy761_attribute_group);
 if (err)
  return err;

 pm_runtime_enable(&client->dev);

 return 0;
}
