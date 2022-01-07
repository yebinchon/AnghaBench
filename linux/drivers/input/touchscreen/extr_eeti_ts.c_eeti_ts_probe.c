
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bustype; } ;
struct input_dev {int close; int open; TYPE_1__ id; int name; } ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {int name; int irq; struct device dev; } ;
struct eeti_ts {int attn_gpio; struct input_dev* input; struct i2c_client* client; int props; int mutex; } ;


 int ABS_PRESSURE ;
 int ABS_X ;
 int ABS_Y ;
 int BTN_TOUCH ;
 int BUS_I2C ;
 int EETI_MAXVAL ;
 int ENOMEM ;
 int EV_KEY ;
 int GFP_KERNEL ;
 int GPIOD_IN ;
 int IRQF_ONESHOT ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (struct device*,char*,...) ;
 int devm_gpiod_get_optional (struct device*,char*,int ) ;
 struct input_dev* devm_input_allocate_device (struct device*) ;
 struct eeti_ts* devm_kzalloc (struct device*,int,int ) ;
 int devm_request_threaded_irq (struct device*,int ,int *,int ,int ,int ,struct eeti_ts*) ;
 int eeti_ts_close ;
 int eeti_ts_isr ;
 int eeti_ts_open ;
 int eeti_ts_stop (struct eeti_ts*) ;
 int i2c_set_clientdata (struct i2c_client*,struct eeti_ts*) ;
 int input_register_device (struct input_dev*) ;
 int input_set_abs_params (struct input_dev*,int ,int ,int,int ,int ) ;
 int input_set_capability (struct input_dev*,int ,int ) ;
 int input_set_drvdata (struct input_dev*,struct eeti_ts*) ;
 int mutex_init (int *) ;
 int touchscreen_parse_properties (struct input_dev*,int,int *) ;

__attribute__((used)) static int eeti_ts_probe(struct i2c_client *client,
    const struct i2c_device_id *idp)
{
 struct device *dev = &client->dev;
 struct eeti_ts *eeti;
 struct input_dev *input;
 int error;
 eeti = devm_kzalloc(dev, sizeof(*eeti), GFP_KERNEL);
 if (!eeti) {
  dev_err(dev, "failed to allocate driver data\n");
  return -ENOMEM;
 }

 mutex_init(&eeti->mutex);

 input = devm_input_allocate_device(dev);
 if (!input) {
  dev_err(dev, "Failed to allocate input device.\n");
  return -ENOMEM;
 }

 input_set_capability(input, EV_KEY, BTN_TOUCH);

 input_set_abs_params(input, ABS_X, 0, EETI_MAXVAL, 0, 0);
 input_set_abs_params(input, ABS_Y, 0, EETI_MAXVAL, 0, 0);
 input_set_abs_params(input, ABS_PRESSURE, 0, 0xff, 0, 0);

 touchscreen_parse_properties(input, 0, &eeti->props);

 input->name = client->name;
 input->id.bustype = BUS_I2C;
 input->open = eeti_ts_open;
 input->close = eeti_ts_close;

 eeti->client = client;
 eeti->input = input;

 eeti->attn_gpio = devm_gpiod_get_optional(dev, "attn", GPIOD_IN);
 if (IS_ERR(eeti->attn_gpio))
  return PTR_ERR(eeti->attn_gpio);

 i2c_set_clientdata(client, eeti);
 input_set_drvdata(input, eeti);

 error = devm_request_threaded_irq(dev, client->irq,
       ((void*)0), eeti_ts_isr,
       IRQF_ONESHOT,
       client->name, eeti);
 if (error) {
  dev_err(dev, "Unable to request touchscreen IRQ: %d\n",
   error);
  return error;
 }





 eeti_ts_stop(eeti);

 error = input_register_device(input);
 if (error)
  return error;

 return 0;
}
