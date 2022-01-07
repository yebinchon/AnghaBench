
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bustype; } ;
struct input_dev {int close; int open; TYPE_1__ id; int name; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; int irq; int adapter; } ;
struct bu21029_ts_data {int prop; int timer; struct input_dev* in_dev; struct i2c_client* client; int reset_gpios; int vdd; int x_plate_ohms; } ;


 int ABS_PRESSURE ;
 int ABS_X ;
 int ABS_Y ;
 int BTN_TOUCH ;
 int BUS_I2C ;
 int DRIVER_NAME ;
 int EIO ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int EV_KEY ;
 int GFP_KERNEL ;
 int GPIOD_OUT_HIGH ;
 int I2C_FUNC_SMBUS_READ_I2C_BLOCK ;
 int I2C_FUNC_SMBUS_WRITE_BYTE ;
 int I2C_FUNC_SMBUS_WRITE_BYTE_DATA ;
 int IRQF_ONESHOT ;
 int IRQ_NOAUTOEN ;
 scalar_t__ IS_ERR (int ) ;
 int MAX_12BIT ;
 int PTR_ERR (int ) ;
 int bu21029_start_chip ;
 int bu21029_stop_chip ;
 int bu21029_touch_release ;
 int bu21029_touch_soft_irq ;
 int dev_err (int *,char*,...) ;
 int device_property_read_u32 (int *,char*,int *) ;
 int devm_gpiod_get_optional (int *,char*,int ) ;
 struct input_dev* devm_input_allocate_device (int *) ;
 struct bu21029_ts_data* devm_kzalloc (int *,int,int ) ;
 int devm_regulator_get (int *,char*) ;
 int devm_request_threaded_irq (int *,int ,int *,int ,int ,int ,struct bu21029_ts_data*) ;
 int i2c_check_functionality (int ,int) ;
 int i2c_set_clientdata (struct i2c_client*,struct bu21029_ts_data*) ;
 int input_register_device (struct input_dev*) ;
 int input_set_abs_params (struct input_dev*,int ,int ,int ,int ,int ) ;
 int input_set_capability (struct input_dev*,int ,int ) ;
 int input_set_drvdata (struct input_dev*,struct bu21029_ts_data*) ;
 int irq_set_status_flags (int ,int ) ;
 int timer_setup (int *,int ,int ) ;
 int touchscreen_parse_properties (struct input_dev*,int,int *) ;

__attribute__((used)) static int bu21029_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct bu21029_ts_data *bu21029;
 struct input_dev *in_dev;
 int error;

 if (!i2c_check_functionality(client->adapter,
         I2C_FUNC_SMBUS_WRITE_BYTE |
         I2C_FUNC_SMBUS_WRITE_BYTE_DATA |
         I2C_FUNC_SMBUS_READ_I2C_BLOCK)) {
  dev_err(&client->dev,
   "i2c functionality support is not sufficient\n");
  return -EIO;
 }

 bu21029 = devm_kzalloc(&client->dev, sizeof(*bu21029), GFP_KERNEL);
 if (!bu21029)
  return -ENOMEM;

 error = device_property_read_u32(&client->dev, "rohm,x-plate-ohms",
      &bu21029->x_plate_ohms);
 if (error) {
  dev_err(&client->dev,
   "invalid 'x-plate-ohms' supplied: %d\n", error);
  return error;
 }

 bu21029->vdd = devm_regulator_get(&client->dev, "vdd");
 if (IS_ERR(bu21029->vdd)) {
  error = PTR_ERR(bu21029->vdd);
  if (error != -EPROBE_DEFER)
   dev_err(&client->dev,
    "failed to acquire 'vdd' supply: %d\n", error);
  return error;
 }

 bu21029->reset_gpios = devm_gpiod_get_optional(&client->dev,
             "reset", GPIOD_OUT_HIGH);
 if (IS_ERR(bu21029->reset_gpios)) {
  error = PTR_ERR(bu21029->reset_gpios);
  if (error != -EPROBE_DEFER)
   dev_err(&client->dev,
    "failed to acquire 'reset' gpio: %d\n", error);
  return error;
 }

 in_dev = devm_input_allocate_device(&client->dev);
 if (!in_dev) {
  dev_err(&client->dev, "unable to allocate input device\n");
  return -ENOMEM;
 }

 bu21029->client = client;
 bu21029->in_dev = in_dev;
 timer_setup(&bu21029->timer, bu21029_touch_release, 0);

 in_dev->name = DRIVER_NAME;
 in_dev->id.bustype = BUS_I2C;
 in_dev->open = bu21029_start_chip;
 in_dev->close = bu21029_stop_chip;

 input_set_capability(in_dev, EV_KEY, BTN_TOUCH);
 input_set_abs_params(in_dev, ABS_X, 0, MAX_12BIT, 0, 0);
 input_set_abs_params(in_dev, ABS_Y, 0, MAX_12BIT, 0, 0);
 input_set_abs_params(in_dev, ABS_PRESSURE, 0, MAX_12BIT, 0, 0);
 touchscreen_parse_properties(in_dev, 0, &bu21029->prop);

 input_set_drvdata(in_dev, bu21029);

 irq_set_status_flags(client->irq, IRQ_NOAUTOEN);
 error = devm_request_threaded_irq(&client->dev, client->irq,
       ((void*)0), bu21029_touch_soft_irq,
       IRQF_ONESHOT, DRIVER_NAME, bu21029);
 if (error) {
  dev_err(&client->dev,
   "unable to request touch irq: %d\n", error);
  return error;
 }

 error = input_register_device(in_dev);
 if (error) {
  dev_err(&client->dev,
   "unable to register input device: %d\n", error);
  return error;
 }

 i2c_set_clientdata(client, bu21029);

 return 0;
}
