
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct max11801_data {struct input_dev* input_dev; struct i2c_client* client; } ;
struct TYPE_4__ {int * parent; } ;
struct TYPE_3__ {int bustype; } ;
struct input_dev {char* name; int keybit; int evbit; TYPE_2__ dev; TYPE_1__ id; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; int irq; } ;


 int ABS_X ;
 int ABS_Y ;
 int BTN_TOUCH ;
 int BUS_I2C ;
 int ENOMEM ;
 int EV_ABS ;
 int EV_KEY ;
 int GFP_KERNEL ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_LOW ;
 int MAX11801_MAX_X ;
 int MAX11801_MAX_Y ;
 int __set_bit (int ,int ) ;
 int dev_err (int *,char*) ;
 struct input_dev* devm_input_allocate_device (int *) ;
 struct max11801_data* devm_kzalloc (int *,int,int ) ;
 int devm_request_threaded_irq (int *,int ,int *,int ,int,char*,struct max11801_data*) ;
 int input_register_device (struct input_dev*) ;
 int input_set_abs_params (struct input_dev*,int ,int ,int ,int ,int ) ;
 int max11801_ts_interrupt ;
 int max11801_ts_phy_init (struct max11801_data*) ;

__attribute__((used)) static int max11801_ts_probe(struct i2c_client *client,
           const struct i2c_device_id *id)
{
 struct max11801_data *data;
 struct input_dev *input_dev;
 int error;

 data = devm_kzalloc(&client->dev, sizeof(*data), GFP_KERNEL);
 input_dev = devm_input_allocate_device(&client->dev);
 if (!data || !input_dev) {
  dev_err(&client->dev, "Failed to allocate memory\n");
  return -ENOMEM;
 }

 data->client = client;
 data->input_dev = input_dev;

 input_dev->name = "max11801_ts";
 input_dev->id.bustype = BUS_I2C;
 input_dev->dev.parent = &client->dev;

 __set_bit(EV_ABS, input_dev->evbit);
 __set_bit(EV_KEY, input_dev->evbit);
 __set_bit(BTN_TOUCH, input_dev->keybit);
 input_set_abs_params(input_dev, ABS_X, 0, MAX11801_MAX_X, 0, 0);
 input_set_abs_params(input_dev, ABS_Y, 0, MAX11801_MAX_Y, 0, 0);

 max11801_ts_phy_init(data);

 error = devm_request_threaded_irq(&client->dev, client->irq, ((void*)0),
       max11801_ts_interrupt,
       IRQF_TRIGGER_LOW | IRQF_ONESHOT,
       "max11801_ts", data);
 if (error) {
  dev_err(&client->dev, "Failed to register interrupt\n");
  return error;
 }

 error = input_register_device(data->input_dev);
 if (error)
  return error;

 return 0;
}
