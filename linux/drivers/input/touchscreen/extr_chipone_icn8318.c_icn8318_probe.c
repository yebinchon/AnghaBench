
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct device* parent; } ;
struct TYPE_3__ {int bustype; } ;
struct input_dev {TYPE_2__ dev; int (* close ) (struct input_dev*) ;int open; TYPE_1__ id; int name; } ;
struct icn8318_data {struct input_dev* input; struct i2c_client* client; int prop; int wake_gpio; } ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {int name; int irq; struct device dev; } ;


 int ABS_MT_POSITION_X ;
 int ABS_MT_POSITION_Y ;
 int BUS_I2C ;
 int EINVAL ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int EV_ABS ;
 int GFP_KERNEL ;
 int GPIOD_OUT_LOW ;
 int ICN8318_MAX_TOUCHES ;
 int INPUT_MT_DIRECT ;
 int INPUT_MT_DROP_UNUSED ;
 int IRQF_ONESHOT ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (struct device*,char*,...) ;
 int devm_gpiod_get (struct device*,char*,int ) ;
 struct input_dev* devm_input_allocate_device (struct device*) ;
 struct icn8318_data* devm_kzalloc (struct device*,int,int ) ;
 int devm_request_threaded_irq (struct device*,int ,int *,int ,int ,int ,struct icn8318_data*) ;
 int i2c_set_clientdata (struct i2c_client*,struct icn8318_data*) ;
 int icn8318_irq ;
 int icn8318_start ;
 int icn8318_stop (struct input_dev*) ;
 int input_abs_get_max (struct input_dev*,int ) ;
 int input_mt_init_slots (struct input_dev*,int ,int) ;
 int input_register_device (struct input_dev*) ;
 int input_set_capability (struct input_dev*,int ,int ) ;
 int input_set_drvdata (struct input_dev*,struct icn8318_data*) ;
 int touchscreen_parse_properties (struct input_dev*,int,int *) ;

__attribute__((used)) static int icn8318_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct device *dev = &client->dev;
 struct icn8318_data *data;
 struct input_dev *input;
 int error;

 if (!client->irq) {
  dev_err(dev, "Error no irq specified\n");
  return -EINVAL;
 }

 data = devm_kzalloc(dev, sizeof(*data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 data->wake_gpio = devm_gpiod_get(dev, "wake", GPIOD_OUT_LOW);
 if (IS_ERR(data->wake_gpio)) {
  error = PTR_ERR(data->wake_gpio);
  if (error != -EPROBE_DEFER)
   dev_err(dev, "Error getting wake gpio: %d\n", error);
  return error;
 }

 input = devm_input_allocate_device(dev);
 if (!input)
  return -ENOMEM;

 input->name = client->name;
 input->id.bustype = BUS_I2C;
 input->open = icn8318_start;
 input->close = icn8318_stop;
 input->dev.parent = dev;

 input_set_capability(input, EV_ABS, ABS_MT_POSITION_X);
 input_set_capability(input, EV_ABS, ABS_MT_POSITION_Y);

 touchscreen_parse_properties(input, 1, &data->prop);
 if (!input_abs_get_max(input, ABS_MT_POSITION_X) ||
     !input_abs_get_max(input, ABS_MT_POSITION_Y)) {
  dev_err(dev, "Error touchscreen-size-x and/or -y missing\n");
  return -EINVAL;
 }

 error = input_mt_init_slots(input, ICN8318_MAX_TOUCHES,
        INPUT_MT_DIRECT | INPUT_MT_DROP_UNUSED);
 if (error)
  return error;

 data->client = client;
 data->input = input;
 input_set_drvdata(input, data);

 error = devm_request_threaded_irq(dev, client->irq, ((void*)0), icn8318_irq,
       IRQF_ONESHOT, client->name, data);
 if (error) {
  dev_err(dev, "Error requesting irq: %d\n", error);
  return error;
 }


 icn8318_stop(data->input);

 error = input_register_device(input);
 if (error)
  return error;

 i2c_set_clientdata(client, data);

 return 0;
}
