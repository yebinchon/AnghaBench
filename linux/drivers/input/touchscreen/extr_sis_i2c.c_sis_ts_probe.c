
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sis_ts_data {struct input_dev* input; void* reset_gpio; void* attn_gpio; struct i2c_client* client; } ;
struct TYPE_2__ {int bustype; } ;
struct input_dev {char* name; TYPE_1__ id; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; int name; int irq; } ;


 int ABS_MT_POSITION_X ;
 int ABS_MT_POSITION_Y ;
 int ABS_MT_PRESSURE ;
 int ABS_MT_TOUCH_MAJOR ;
 int ABS_MT_TOUCH_MINOR ;
 int BUS_I2C ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int GPIOD_IN ;
 int GPIOD_OUT_LOW ;
 int INPUT_MT_DIRECT ;
 int IRQF_ONESHOT ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int SIS_AREA_LENGTH_LONGER ;
 int SIS_AREA_LENGTH_SHORT ;
 int SIS_MAX_FINGERS ;
 int SIS_MAX_PRESSURE ;
 int SIS_MAX_X ;
 int SIS_MAX_Y ;
 int dev_err (int *,char*,...) ;
 void* devm_gpiod_get_optional (int *,char*,int ) ;
 struct input_dev* devm_input_allocate_device (int *) ;
 struct sis_ts_data* devm_kzalloc (int *,int,int ) ;
 int devm_request_threaded_irq (int *,int ,int *,int ,int ,int ,struct sis_ts_data*) ;
 int input_mt_init_slots (struct input_dev*,int ,int ) ;
 int input_register_device (struct input_dev*) ;
 int input_set_abs_params (struct input_dev*,int ,int ,int ,int ,int ) ;
 int sis_ts_irq_handler ;
 int sis_ts_reset (struct sis_ts_data*) ;

__attribute__((used)) static int sis_ts_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 struct sis_ts_data *ts;
 struct input_dev *input;
 int error;

 ts = devm_kzalloc(&client->dev, sizeof(*ts), GFP_KERNEL);
 if (!ts)
  return -ENOMEM;

 ts->client = client;

 ts->attn_gpio = devm_gpiod_get_optional(&client->dev,
      "attn", GPIOD_IN);
 if (IS_ERR(ts->attn_gpio)) {
  error = PTR_ERR(ts->attn_gpio);
  if (error != -EPROBE_DEFER)
   dev_err(&client->dev,
    "Failed to get attention GPIO: %d\n", error);
  return error;
 }

 ts->reset_gpio = devm_gpiod_get_optional(&client->dev,
       "reset", GPIOD_OUT_LOW);
 if (IS_ERR(ts->reset_gpio)) {
  error = PTR_ERR(ts->reset_gpio);
  if (error != -EPROBE_DEFER)
   dev_err(&client->dev,
    "Failed to get reset GPIO: %d\n", error);
  return error;
 }

 sis_ts_reset(ts);

 ts->input = input = devm_input_allocate_device(&client->dev);
 if (!input) {
  dev_err(&client->dev, "Failed to allocate input device\n");
  return -ENOMEM;
 }

 input->name = "SiS Touchscreen";
 input->id.bustype = BUS_I2C;

 input_set_abs_params(input, ABS_MT_POSITION_X, 0, SIS_MAX_X, 0, 0);
 input_set_abs_params(input, ABS_MT_POSITION_Y, 0, SIS_MAX_Y, 0, 0);
 input_set_abs_params(input, ABS_MT_PRESSURE, 0, SIS_MAX_PRESSURE, 0, 0);
 input_set_abs_params(input, ABS_MT_TOUCH_MAJOR,
        0, SIS_AREA_LENGTH_LONGER, 0, 0);
 input_set_abs_params(input, ABS_MT_TOUCH_MINOR,
        0, SIS_AREA_LENGTH_SHORT, 0, 0);

 error = input_mt_init_slots(input, SIS_MAX_FINGERS, INPUT_MT_DIRECT);
 if (error) {
  dev_err(&client->dev,
   "Failed to initialize MT slots: %d\n", error);
  return error;
 }

 error = devm_request_threaded_irq(&client->dev, client->irq,
       ((void*)0), sis_ts_irq_handler,
       IRQF_ONESHOT,
       client->name, ts);
 if (error) {
  dev_err(&client->dev, "Failed to request IRQ: %d\n", error);
  return error;
 }

 error = input_register_device(ts->input);
 if (error) {
  dev_err(&client->dev,
   "Failed to register input device: %d\n", error);
  return error;
 }

 return 0;
}
