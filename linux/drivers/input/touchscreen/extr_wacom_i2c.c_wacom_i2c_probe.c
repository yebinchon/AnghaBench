
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wacom_i2c {struct input_dev* input; struct i2c_client* client; } ;
struct wacom_features {int pressure_max; int y_max; int x_max; int fw_version; int member_0; } ;
struct TYPE_4__ {int * parent; } ;
struct TYPE_3__ {int vendor; int version; int bustype; } ;
struct input_dev {char* name; int* evbit; int keybit; int close; int open; TYPE_2__ dev; TYPE_1__ id; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int irq; int dev; int adapter; } ;


 int ABS_PRESSURE ;
 int ABS_X ;
 int ABS_Y ;
 int BIT_MASK (int ) ;
 int BTN_STYLUS ;
 int BTN_STYLUS2 ;
 int BTN_TOOL_PEN ;
 int BTN_TOOL_RUBBER ;
 int BTN_TOUCH ;
 int BUS_I2C ;
 int EIO ;
 int ENOMEM ;
 int EV_ABS ;
 int EV_KEY ;
 int GFP_KERNEL ;
 int I2C_FUNC_I2C ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_LOW ;
 int __set_bit (int ,int ) ;
 int dev_err (int *,char*,...) ;
 int disable_irq (int ) ;
 int free_irq (int ,struct wacom_i2c*) ;
 int i2c_check_functionality (int ,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct wacom_i2c*) ;
 struct input_dev* input_allocate_device () ;
 int input_free_device (struct input_dev*) ;
 int input_register_device (struct input_dev*) ;
 int input_set_abs_params (struct input_dev*,int ,int ,int ,int ,int ) ;
 int input_set_drvdata (struct input_dev*,struct wacom_i2c*) ;
 int kfree (struct wacom_i2c*) ;
 struct wacom_i2c* kzalloc (int,int ) ;
 int request_threaded_irq (int ,int *,int ,int,char*,struct wacom_i2c*) ;
 int wacom_i2c_close ;
 int wacom_i2c_irq ;
 int wacom_i2c_open ;
 int wacom_query_device (struct i2c_client*,struct wacom_features*) ;

__attribute__((used)) static int wacom_i2c_probe(struct i2c_client *client,
         const struct i2c_device_id *id)
{
 struct wacom_i2c *wac_i2c;
 struct input_dev *input;
 struct wacom_features features = { 0 };
 int error;

 if (!i2c_check_functionality(client->adapter, I2C_FUNC_I2C)) {
  dev_err(&client->dev, "i2c_check_functionality error\n");
  return -EIO;
 }

 error = wacom_query_device(client, &features);
 if (error)
  return error;

 wac_i2c = kzalloc(sizeof(*wac_i2c), GFP_KERNEL);
 input = input_allocate_device();
 if (!wac_i2c || !input) {
  error = -ENOMEM;
  goto err_free_mem;
 }

 wac_i2c->client = client;
 wac_i2c->input = input;

 input->name = "Wacom I2C Digitizer";
 input->id.bustype = BUS_I2C;
 input->id.vendor = 0x56a;
 input->id.version = features.fw_version;
 input->dev.parent = &client->dev;
 input->open = wacom_i2c_open;
 input->close = wacom_i2c_close;

 input->evbit[0] |= BIT_MASK(EV_KEY) | BIT_MASK(EV_ABS);

 __set_bit(BTN_TOOL_PEN, input->keybit);
 __set_bit(BTN_TOOL_RUBBER, input->keybit);
 __set_bit(BTN_STYLUS, input->keybit);
 __set_bit(BTN_STYLUS2, input->keybit);
 __set_bit(BTN_TOUCH, input->keybit);

 input_set_abs_params(input, ABS_X, 0, features.x_max, 0, 0);
 input_set_abs_params(input, ABS_Y, 0, features.y_max, 0, 0);
 input_set_abs_params(input, ABS_PRESSURE,
        0, features.pressure_max, 0, 0);

 input_set_drvdata(input, wac_i2c);

 error = request_threaded_irq(client->irq, ((void*)0), wacom_i2c_irq,
         IRQF_TRIGGER_LOW | IRQF_ONESHOT,
         "wacom_i2c", wac_i2c);
 if (error) {
  dev_err(&client->dev,
   "Failed to enable IRQ, error: %d\n", error);
  goto err_free_mem;
 }


 disable_irq(client->irq);

 error = input_register_device(wac_i2c->input);
 if (error) {
  dev_err(&client->dev,
   "Failed to register input device, error: %d\n", error);
  goto err_free_irq;
 }

 i2c_set_clientdata(client, wac_i2c);
 return 0;

err_free_irq:
 free_irq(client->irq, wac_i2c);
err_free_mem:
 input_free_device(input);
 kfree(wac_i2c);

 return error;
}
