
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mcs_platform_data {int (* cfg_pin ) () ;} ;
struct mcs5000_ts_data {struct input_dev* input_dev; struct i2c_client* client; } ;
struct TYPE_4__ {int * parent; } ;
struct TYPE_3__ {int bustype; } ;
struct input_dev {char* name; int keybit; int evbit; TYPE_2__ dev; TYPE_1__ id; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; int irq; } ;


 int ABS_X ;
 int ABS_Y ;
 int BTN_TOUCH ;
 int BUS_I2C ;
 int EINVAL ;
 int ENOMEM ;
 int EV_ABS ;
 int EV_KEY ;
 int GFP_KERNEL ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_LOW ;
 int MCS5000_MAX_XC ;
 int MCS5000_MAX_YC ;
 int __set_bit (int ,int ) ;
 int dev_err (int *,char*) ;
 struct mcs_platform_data* dev_get_platdata (int *) ;
 struct input_dev* devm_input_allocate_device (int *) ;
 struct mcs5000_ts_data* devm_kzalloc (int *,int,int ) ;
 int devm_request_threaded_irq (int *,int ,int *,int ,int,char*,struct mcs5000_ts_data*) ;
 int i2c_set_clientdata (struct i2c_client*,struct mcs5000_ts_data*) ;
 int input_register_device (struct input_dev*) ;
 int input_set_abs_params (struct input_dev*,int ,int ,int ,int ,int ) ;
 int mcs5000_ts_interrupt ;
 int mcs5000_ts_phys_init (struct mcs5000_ts_data*,struct mcs_platform_data const*) ;
 int stub1 () ;

__attribute__((used)) static int mcs5000_ts_probe(struct i2c_client *client,
       const struct i2c_device_id *id)
{
 const struct mcs_platform_data *pdata;
 struct mcs5000_ts_data *data;
 struct input_dev *input_dev;
 int error;

 pdata = dev_get_platdata(&client->dev);
 if (!pdata)
  return -EINVAL;

 data = devm_kzalloc(&client->dev, sizeof(*data), GFP_KERNEL);
 if (!data) {
  dev_err(&client->dev, "Failed to allocate memory\n");
  return -ENOMEM;
 }

 data->client = client;

 input_dev = devm_input_allocate_device(&client->dev);
 if (!input_dev) {
  dev_err(&client->dev, "Failed to allocate input device\n");
  return -ENOMEM;
 }

 input_dev->name = "MELFAS MCS-5000 Touchscreen";
 input_dev->id.bustype = BUS_I2C;
 input_dev->dev.parent = &client->dev;

 __set_bit(EV_ABS, input_dev->evbit);
 __set_bit(EV_KEY, input_dev->evbit);
 __set_bit(BTN_TOUCH, input_dev->keybit);
 input_set_abs_params(input_dev, ABS_X, 0, MCS5000_MAX_XC, 0, 0);
 input_set_abs_params(input_dev, ABS_Y, 0, MCS5000_MAX_YC, 0, 0);

 data->input_dev = input_dev;

 if (pdata->cfg_pin)
  pdata->cfg_pin();

 error = devm_request_threaded_irq(&client->dev, client->irq,
       ((void*)0), mcs5000_ts_interrupt,
       IRQF_TRIGGER_LOW | IRQF_ONESHOT,
       "mcs5000_ts", data);
 if (error) {
  dev_err(&client->dev, "Failed to register interrupt\n");
  return error;
 }

 error = input_register_device(data->input_dev);
 if (error) {
  dev_err(&client->dev, "Failed to register input device\n");
  return error;
 }

 mcs5000_ts_phys_init(data, pdata);
 i2c_set_clientdata(client, data);

 return 0;
}
