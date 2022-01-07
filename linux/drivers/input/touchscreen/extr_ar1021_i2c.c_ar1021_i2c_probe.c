
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * parent; } ;
struct TYPE_3__ {int bustype; } ;
struct input_dev {char* name; int propbit; int close; int open; TYPE_2__ dev; TYPE_1__ id; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; int irq; int adapter; } ;
struct ar1021_i2c {struct input_dev* input; struct i2c_client* client; } ;


 int ABS_X ;
 int ABS_Y ;
 int AR1021_MAX_X ;
 int AR1021_MAX_Y ;
 int BTN_TOUCH ;
 int BUS_I2C ;
 int ENOMEM ;
 int ENXIO ;
 int EV_KEY ;
 int GFP_KERNEL ;
 int I2C_FUNC_I2C ;
 int INPUT_PROP_DIRECT ;
 int IRQF_ONESHOT ;
 int __set_bit (int ,int ) ;
 int ar1021_i2c_close ;
 int ar1021_i2c_irq ;
 int ar1021_i2c_open ;
 int dev_err (int *,char*,...) ;
 struct input_dev* devm_input_allocate_device (int *) ;
 struct ar1021_i2c* devm_kzalloc (int *,int,int ) ;
 int devm_request_threaded_irq (int *,int ,int *,int ,int ,char*,struct ar1021_i2c*) ;
 int disable_irq (int ) ;
 int i2c_check_functionality (int ,int ) ;
 int input_register_device (struct input_dev*) ;
 int input_set_abs_params (struct input_dev*,int ,int ,int ,int ,int ) ;
 int input_set_capability (struct input_dev*,int ,int ) ;
 int input_set_drvdata (struct input_dev*,struct ar1021_i2c*) ;

__attribute__((used)) static int ar1021_i2c_probe(struct i2c_client *client,
       const struct i2c_device_id *id)
{
 struct ar1021_i2c *ar1021;
 struct input_dev *input;
 int error;

 if (!i2c_check_functionality(client->adapter, I2C_FUNC_I2C)) {
  dev_err(&client->dev, "i2c_check_functionality error\n");
  return -ENXIO;
 }

 ar1021 = devm_kzalloc(&client->dev, sizeof(*ar1021), GFP_KERNEL);
 if (!ar1021)
  return -ENOMEM;

 input = devm_input_allocate_device(&client->dev);
 if (!input)
  return -ENOMEM;

 ar1021->client = client;
 ar1021->input = input;

 input->name = "ar1021 I2C Touchscreen";
 input->id.bustype = BUS_I2C;
 input->dev.parent = &client->dev;
 input->open = ar1021_i2c_open;
 input->close = ar1021_i2c_close;

 __set_bit(INPUT_PROP_DIRECT, input->propbit);
 input_set_capability(input, EV_KEY, BTN_TOUCH);
 input_set_abs_params(input, ABS_X, 0, AR1021_MAX_X, 0, 0);
 input_set_abs_params(input, ABS_Y, 0, AR1021_MAX_Y, 0, 0);

 input_set_drvdata(input, ar1021);

 error = devm_request_threaded_irq(&client->dev, client->irq,
       ((void*)0), ar1021_i2c_irq,
       IRQF_ONESHOT,
       "ar1021_i2c", ar1021);
 if (error) {
  dev_err(&client->dev,
   "Failed to enable IRQ, error: %d\n", error);
  return error;
 }


 disable_irq(client->irq);

 error = input_register_device(ar1021->input);
 if (error) {
  dev_err(&client->dev,
   "Failed to register input device, error: %d\n", error);
  return error;
 }

 return 0;
}
