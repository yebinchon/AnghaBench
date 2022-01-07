
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int bustype; } ;
struct input_dev {int (* close ) (struct input_dev*) ;int open; TYPE_1__ id; int name; } ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {int name; int irq; struct device dev; } ;
struct ektf2127_ts {struct input_dev* input; int prop; struct i2c_client* client; int power_gpios; } ;
typedef int buf ;


 int ABS_MT_POSITION_X ;
 int ABS_MT_POSITION_Y ;
 int BUS_I2C ;
 int EINVAL ;
 int EKTF2127_MAX_TOUCHES ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int GPIOD_OUT_HIGH ;
 int INPUT_MT_DIRECT ;
 int INPUT_MT_DROP_UNUSED ;
 int INPUT_MT_TRACK ;
 int IRQF_ONESHOT ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (struct device*,char*,...) ;
 int devm_gpiod_get (struct device*,char*,int ) ;
 struct input_dev* devm_input_allocate_device (struct device*) ;
 struct ektf2127_ts* devm_kzalloc (struct device*,int,int ) ;
 int devm_request_threaded_irq (struct device*,int ,int *,int ,int ,int ,struct ektf2127_ts*) ;
 int ektf2127_irq ;
 int ektf2127_query_dimension (struct i2c_client*,int) ;
 int ektf2127_start ;
 int ektf2127_stop (struct input_dev*) ;
 int i2c_master_recv (struct i2c_client*,int *,int) ;
 int i2c_set_clientdata (struct i2c_client*,struct ektf2127_ts*) ;
 int input_mt_init_slots (struct input_dev*,int ,int) ;
 int input_register_device (struct input_dev*) ;
 int input_set_abs_params (struct input_dev*,int ,int ,int,int ,int ) ;
 int input_set_drvdata (struct input_dev*,struct ektf2127_ts*) ;
 int msleep (int) ;
 int touchscreen_parse_properties (struct input_dev*,int,int *) ;

__attribute__((used)) static int ektf2127_probe(struct i2c_client *client,
     const struct i2c_device_id *id)
{
 struct device *dev = &client->dev;
 struct ektf2127_ts *ts;
 struct input_dev *input;
 u8 buf[4];
 int max_x, max_y;
 int error;

 if (!client->irq) {
  dev_err(dev, "Error no irq specified\n");
  return -EINVAL;
 }

 ts = devm_kzalloc(dev, sizeof(*ts), GFP_KERNEL);
 if (!ts)
  return -ENOMEM;


 ts->power_gpios = devm_gpiod_get(dev, "power", GPIOD_OUT_HIGH);
 if (IS_ERR(ts->power_gpios)) {
  error = PTR_ERR(ts->power_gpios);
  if (error != -EPROBE_DEFER)
   dev_err(dev, "Error getting power gpio: %d\n", error);
  return error;
 }

 input = devm_input_allocate_device(dev);
 if (!input)
  return -ENOMEM;

 input->name = client->name;
 input->id.bustype = BUS_I2C;
 input->open = ektf2127_start;
 input->close = ektf2127_stop;

 ts->client = client;


 msleep(20);
 i2c_master_recv(ts->client, buf, sizeof(buf));


 max_x = ektf2127_query_dimension(client, 1);
 if (max_x < 0)
  return max_x;

 max_y = ektf2127_query_dimension(client, 0);
 if (max_y < 0)
  return max_y;

 input_set_abs_params(input, ABS_MT_POSITION_X, 0, max_x, 0, 0);
 input_set_abs_params(input, ABS_MT_POSITION_Y, 0, max_y, 0, 0);
 touchscreen_parse_properties(input, 1, &ts->prop);

 error = input_mt_init_slots(input, EKTF2127_MAX_TOUCHES,
        INPUT_MT_DIRECT |
     INPUT_MT_DROP_UNUSED |
     INPUT_MT_TRACK);
 if (error)
  return error;

 ts->input = input;
 input_set_drvdata(input, ts);

 error = devm_request_threaded_irq(dev, client->irq,
       ((void*)0), ektf2127_irq,
       IRQF_ONESHOT, client->name, ts);
 if (error) {
  dev_err(dev, "Error requesting irq: %d\n", error);
  return error;
 }


 ektf2127_stop(ts->input);

 error = input_register_device(input);
 if (error)
  return error;

 i2c_set_clientdata(client, ts);

 return 0;
}
