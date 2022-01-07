
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bustype; } ;
struct input_dev {char* name; int keybit; int evbit; TYPE_1__ id; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; int irq; } ;
struct egalax_ts {struct input_dev* input_dev; struct i2c_client* client; } ;


 int ABS_MT_POSITION_X ;
 int ABS_MT_POSITION_Y ;
 int ABS_X ;
 int ABS_Y ;
 int BTN_TOUCH ;
 int BUS_I2C ;
 int EGALAX_MAX_X ;
 int EGALAX_MAX_Y ;
 int ENOMEM ;
 int EV_ABS ;
 int EV_KEY ;
 int GFP_KERNEL ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_LOW ;
 int MAX_SUPPORT_POINTS ;
 int __set_bit (int ,int ) ;
 int dev_err (int *,char*) ;
 struct input_dev* devm_input_allocate_device (int *) ;
 struct egalax_ts* devm_kzalloc (int *,int,int ) ;
 int devm_request_threaded_irq (int *,int ,int *,int ,int,char*,struct egalax_ts*) ;
 int egalax_firmware_version (struct i2c_client*) ;
 int egalax_ts_interrupt ;
 int egalax_wake_up_device (struct i2c_client*) ;
 int input_mt_init_slots (struct input_dev*,int ,int ) ;
 int input_register_device (struct input_dev*) ;
 int input_set_abs_params (struct input_dev*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int egalax_ts_probe(struct i2c_client *client,
      const struct i2c_device_id *id)
{
 struct egalax_ts *ts;
 struct input_dev *input_dev;
 int error;

 ts = devm_kzalloc(&client->dev, sizeof(struct egalax_ts), GFP_KERNEL);
 if (!ts) {
  dev_err(&client->dev, "Failed to allocate memory\n");
  return -ENOMEM;
 }

 input_dev = devm_input_allocate_device(&client->dev);
 if (!input_dev) {
  dev_err(&client->dev, "Failed to allocate memory\n");
  return -ENOMEM;
 }

 ts->client = client;
 ts->input_dev = input_dev;


 error = egalax_wake_up_device(client);
 if (error) {
  dev_err(&client->dev, "Failed to wake up the controller\n");
  return error;
 }

 error = egalax_firmware_version(client);
 if (error < 0) {
  dev_err(&client->dev, "Failed to read firmware version\n");
  return error;
 }

 input_dev->name = "EETI eGalax Touch Screen";
 input_dev->id.bustype = BUS_I2C;

 __set_bit(EV_ABS, input_dev->evbit);
 __set_bit(EV_KEY, input_dev->evbit);
 __set_bit(BTN_TOUCH, input_dev->keybit);

 input_set_abs_params(input_dev, ABS_X, 0, EGALAX_MAX_X, 0, 0);
 input_set_abs_params(input_dev, ABS_Y, 0, EGALAX_MAX_Y, 0, 0);
 input_set_abs_params(input_dev,
        ABS_MT_POSITION_X, 0, EGALAX_MAX_X, 0, 0);
 input_set_abs_params(input_dev,
        ABS_MT_POSITION_Y, 0, EGALAX_MAX_Y, 0, 0);
 input_mt_init_slots(input_dev, MAX_SUPPORT_POINTS, 0);

 error = devm_request_threaded_irq(&client->dev, client->irq, ((void*)0),
       egalax_ts_interrupt,
       IRQF_TRIGGER_LOW | IRQF_ONESHOT,
       "egalax_ts", ts);
 if (error < 0) {
  dev_err(&client->dev, "Failed to register interrupt\n");
  return error;
 }

 error = input_register_device(ts->input_dev);
 if (error)
  return error;

 return 0;
}
