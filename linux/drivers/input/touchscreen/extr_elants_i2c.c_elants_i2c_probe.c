
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef union i2c_smbus_data {int dummy; } i2c_smbus_data ;
struct i2c_device_id {int dummy; } ;
struct TYPE_18__ {int of_node; } ;
struct i2c_client {TYPE_6__ dev; int name; int irq; int addr; int adapter; } ;
struct elants_data {int keep_power_in_suspend; int x_max; int y_max; TYPE_2__* input; int y_res; int x_res; void* reset_gpio; void* vccio; void* vcc33; struct i2c_client* client; int cmd_done; int sysfs_mutex; } ;
struct TYPE_16__ {int bustype; } ;
struct TYPE_17__ {char* name; int evbit; int keybit; TYPE_1__ id; } ;


 int ABS_MT_POSITION_X ;
 int ABS_MT_POSITION_Y ;
 int ABS_MT_PRESSURE ;
 int ABS_MT_TOUCH_MAJOR ;
 int ABS_PRESSURE ;
 int ABS_X ;
 int ABS_Y ;
 int BTN_TOUCH ;
 int BUS_I2C ;
 int DEVICE_NAME ;
 int ENOENT ;
 int ENOMEM ;
 int ENOSYS ;
 int ENXIO ;
 int EPROBE_DEFER ;
 int EV_ABS ;
 int EV_KEY ;
 int GFP_KERNEL ;
 int GPIOD_OUT_LOW ;
 int I2C_FUNC_I2C ;
 int I2C_SMBUS_BYTE ;
 int I2C_SMBUS_READ ;
 int INPUT_MT_DIRECT ;
 int INPUT_MT_DROP_UNUSED ;
 unsigned long IRQF_ONESHOT ;
 unsigned long IRQF_TRIGGER_FALLING ;
 scalar_t__ IS_ERR (void*) ;
 int MAX_CONTACT_NUM ;
 int PTR_ERR (void*) ;
 int __set_bit (int ,int ) ;
 int dev_err (TYPE_6__*,char*,...) ;
 int device_init_wakeup (TYPE_6__*,int) ;
 int devm_add_action (TYPE_6__*,int (*) (struct elants_data*),struct elants_data*) ;
 int devm_device_add_group (TYPE_6__*,int *) ;
 void* devm_gpiod_get (TYPE_6__*,char*,int ) ;
 TYPE_2__* devm_input_allocate_device (TYPE_6__*) ;
 struct elants_data* devm_kzalloc (TYPE_6__*,int,int ) ;
 void* devm_regulator_get (TYPE_6__*,char*) ;
 int devm_request_threaded_irq (TYPE_6__*,int ,int *,int ,unsigned long,int ,struct elants_data*) ;
 int elants_attribute_group ;
 int elants_i2c_initialize (struct elants_data*) ;
 int elants_i2c_irq ;
 int elants_i2c_power_off (struct elants_data*) ;
 int elants_i2c_power_on (struct elants_data*) ;
 int i2c_check_functionality (int ,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct elants_data*) ;
 scalar_t__ i2c_smbus_xfer (int ,int ,int ,int ,int ,int ,union i2c_smbus_data*) ;
 int init_completion (int *) ;
 int input_abs_set_res (TYPE_2__*,int ,int ) ;
 int input_mt_init_slots (TYPE_2__*,int ,int) ;
 int input_register_device (TYPE_2__*) ;
 int input_set_abs_params (TYPE_2__*,int ,int ,int,int ,int ) ;
 unsigned long irq_get_trigger_type (int ) ;
 int mutex_init (int *) ;

__attribute__((used)) static int elants_i2c_probe(struct i2c_client *client,
       const struct i2c_device_id *id)
{
 union i2c_smbus_data dummy;
 struct elants_data *ts;
 unsigned long irqflags;
 int error;

 if (!i2c_check_functionality(client->adapter, I2C_FUNC_I2C)) {
  dev_err(&client->dev,
   "%s: i2c check functionality error\n", DEVICE_NAME);
  return -ENXIO;
 }

 ts = devm_kzalloc(&client->dev, sizeof(struct elants_data), GFP_KERNEL);
 if (!ts)
  return -ENOMEM;

 mutex_init(&ts->sysfs_mutex);
 init_completion(&ts->cmd_done);

 ts->client = client;
 i2c_set_clientdata(client, ts);

 ts->vcc33 = devm_regulator_get(&client->dev, "vcc33");
 if (IS_ERR(ts->vcc33)) {
  error = PTR_ERR(ts->vcc33);
  if (error != -EPROBE_DEFER)
   dev_err(&client->dev,
    "Failed to get 'vcc33' regulator: %d\n",
    error);
  return error;
 }

 ts->vccio = devm_regulator_get(&client->dev, "vccio");
 if (IS_ERR(ts->vccio)) {
  error = PTR_ERR(ts->vccio);
  if (error != -EPROBE_DEFER)
   dev_err(&client->dev,
    "Failed to get 'vccio' regulator: %d\n",
    error);
  return error;
 }

 ts->reset_gpio = devm_gpiod_get(&client->dev, "reset", GPIOD_OUT_LOW);
 if (IS_ERR(ts->reset_gpio)) {
  error = PTR_ERR(ts->reset_gpio);

  if (error == -EPROBE_DEFER)
   return error;

  if (error != -ENOENT && error != -ENOSYS) {
   dev_err(&client->dev,
    "failed to get reset gpio: %d\n",
    error);
   return error;
  }

  ts->keep_power_in_suspend = 1;
 }

 error = elants_i2c_power_on(ts);
 if (error)
  return error;

 error = devm_add_action(&client->dev, elants_i2c_power_off, ts);
 if (error) {
  dev_err(&client->dev,
   "failed to install power off action: %d\n", error);
  elants_i2c_power_off(ts);
  return error;
 }


 if (i2c_smbus_xfer(client->adapter, client->addr, 0,
      I2C_SMBUS_READ, 0, I2C_SMBUS_BYTE, &dummy) < 0) {
  dev_err(&client->dev, "nothing at this address\n");
  return -ENXIO;
 }

 error = elants_i2c_initialize(ts);
 if (error) {
  dev_err(&client->dev, "failed to initialize: %d\n", error);
  return error;
 }

 ts->input = devm_input_allocate_device(&client->dev);
 if (!ts->input) {
  dev_err(&client->dev, "Failed to allocate input device\n");
  return -ENOMEM;
 }

 ts->input->name = "Elan Touchscreen";
 ts->input->id.bustype = BUS_I2C;

 __set_bit(BTN_TOUCH, ts->input->keybit);
 __set_bit(EV_ABS, ts->input->evbit);
 __set_bit(EV_KEY, ts->input->evbit);


 input_set_abs_params(ts->input, ABS_X, 0, ts->x_max, 0, 0);
 input_set_abs_params(ts->input, ABS_Y, 0, ts->y_max, 0, 0);
 input_set_abs_params(ts->input, ABS_PRESSURE, 0, 255, 0, 0);
 input_abs_set_res(ts->input, ABS_X, ts->x_res);
 input_abs_set_res(ts->input, ABS_Y, ts->y_res);


 error = input_mt_init_slots(ts->input, MAX_CONTACT_NUM,
        INPUT_MT_DIRECT | INPUT_MT_DROP_UNUSED);
 if (error) {
  dev_err(&client->dev,
   "failed to initialize MT slots: %d\n", error);
  return error;
 }

 input_set_abs_params(ts->input, ABS_MT_POSITION_X, 0, ts->x_max, 0, 0);
 input_set_abs_params(ts->input, ABS_MT_POSITION_Y, 0, ts->y_max, 0, 0);
 input_set_abs_params(ts->input, ABS_MT_TOUCH_MAJOR, 0, 255, 0, 0);
 input_set_abs_params(ts->input, ABS_MT_PRESSURE, 0, 255, 0, 0);
 input_abs_set_res(ts->input, ABS_MT_POSITION_X, ts->x_res);
 input_abs_set_res(ts->input, ABS_MT_POSITION_Y, ts->y_res);

 error = input_register_device(ts->input);
 if (error) {
  dev_err(&client->dev,
   "unable to register input device: %d\n", error);
  return error;
 }






 irqflags = irq_get_trigger_type(client->irq);
 if (!irqflags)
  irqflags = IRQF_TRIGGER_FALLING;

 error = devm_request_threaded_irq(&client->dev, client->irq,
       ((void*)0), elants_i2c_irq,
       irqflags | IRQF_ONESHOT,
       client->name, ts);
 if (error) {
  dev_err(&client->dev, "Failed to register interrupt\n");
  return error;
 }





 if (!client->dev.of_node)
  device_init_wakeup(&client->dev, 1);

 error = devm_device_add_group(&client->dev, &elants_attribute_group);
 if (error) {
  dev_err(&client->dev, "failed to create sysfs attributes: %d\n",
   error);
  return error;
 }

 return 0;
}
