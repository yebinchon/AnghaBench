
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int max_x; int max_y; } ;
struct mms114_data {int type; struct input_dev* input_dev; void* io_reg; void* core_reg; void* contact_threshold; void* moving_threshold; TYPE_3__ props; struct i2c_client* client; } ;
struct TYPE_5__ {int * parent; } ;
struct TYPE_4__ {int bustype; } ;
struct input_dev {int close; int open; TYPE_2__ dev; TYPE_1__ id; int name; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; int irq; int adapter; } ;
typedef enum mms_type { ____Placeholder_mms_type } mms_type ;


 int ABS_MT_POSITION_X ;
 int ABS_MT_POSITION_Y ;
 int ABS_MT_PRESSURE ;
 int ABS_MT_TOUCH_MAJOR ;
 int BUS_I2C ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int EV_ABS ;
 int GFP_KERNEL ;
 int I2C_FUNC_PROTOCOL_MANGLING ;
 int INPUT_MT_DIRECT ;
 int IRQF_ONESHOT ;
 scalar_t__ IS_ERR (void*) ;
 int MMS114_MAX_AREA ;
 int MMS114_MAX_TOUCH ;
 int PTR_ERR (void*) ;
 scalar_t__ TYPE_MMS114 ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*,...) ;
 int dev_name (int *) ;
 struct input_dev* devm_input_allocate_device (int *) ;
 int devm_kasprintf (int *,int ,char*,scalar_t__) ;
 struct mms114_data* devm_kzalloc (int *,int,int ) ;
 void* devm_regulator_get (int *,char*) ;
 int devm_request_threaded_irq (int *,int ,int *,int ,int ,int ,struct mms114_data*) ;
 int disable_irq (int ) ;
 int i2c_check_functionality (int ,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct mms114_data*) ;
 void* input_abs_get_fuzz (struct input_dev*,int ) ;
 int input_abs_set_fuzz (struct input_dev*,int ,int ) ;
 int input_mt_init_slots (struct input_dev*,int ,int ) ;
 int input_register_device (struct input_dev*) ;
 int input_set_abs_params (struct input_dev*,int ,int ,int,int ,int ) ;
 int input_set_capability (struct input_dev*,int ,int ) ;
 int input_set_drvdata (struct input_dev*,struct mms114_data*) ;
 int mms114_input_close ;
 int mms114_input_open ;
 int mms114_interrupt ;
 int mms114_parse_legacy_bindings (struct mms114_data*) ;
 void* of_device_get_match_data (int *) ;
 int touchscreen_parse_properties (struct input_dev*,int,TYPE_3__*) ;

__attribute__((used)) static int mms114_probe(struct i2c_client *client,
      const struct i2c_device_id *id)
{
 struct mms114_data *data;
 struct input_dev *input_dev;
 const void *match_data;
 int error;

 if (!i2c_check_functionality(client->adapter,
    I2C_FUNC_PROTOCOL_MANGLING)) {
  dev_err(&client->dev,
   "Need i2c bus that supports protocol mangling\n");
  return -ENODEV;
 }

 data = devm_kzalloc(&client->dev, sizeof(struct mms114_data),
       GFP_KERNEL);
 input_dev = devm_input_allocate_device(&client->dev);
 if (!data || !input_dev) {
  dev_err(&client->dev, "Failed to allocate memory\n");
  return -ENOMEM;
 }

 data->client = client;
 data->input_dev = input_dev;


 match_data = of_device_get_match_data(&client->dev);
 if (!match_data)
  return -EINVAL;

 data->type = (enum mms_type)match_data;

 input_set_capability(input_dev, EV_ABS, ABS_MT_POSITION_X);
 input_set_capability(input_dev, EV_ABS, ABS_MT_POSITION_Y);
 input_set_abs_params(input_dev, ABS_MT_PRESSURE, 0, 255, 0, 0);
 input_set_abs_params(input_dev, ABS_MT_TOUCH_MAJOR,
        0, MMS114_MAX_AREA, 0, 0);

 touchscreen_parse_properties(input_dev, 1, &data->props);
 if (!data->props.max_x || !data->props.max_y) {
  dev_dbg(&client->dev,
   "missing X/Y size properties, trying legacy bindings\n");
  error = mms114_parse_legacy_bindings(data);
  if (error)
   return error;

  input_set_abs_params(input_dev, ABS_MT_POSITION_X,
         0, data->props.max_x, 0, 0);
  input_set_abs_params(input_dev, ABS_MT_POSITION_Y,
         0, data->props.max_y, 0, 0);
 }

 if (data->type == TYPE_MMS114) {




  data->moving_threshold = input_abs_get_fuzz(input_dev,
           ABS_MT_POSITION_X);
  data->contact_threshold = input_abs_get_fuzz(input_dev,
            ABS_MT_PRESSURE);
  input_abs_set_fuzz(input_dev, ABS_MT_POSITION_X, 0);
  input_abs_set_fuzz(input_dev, ABS_MT_POSITION_Y, 0);
  input_abs_set_fuzz(input_dev, ABS_MT_PRESSURE, 0);
 }

 input_dev->name = devm_kasprintf(&client->dev, GFP_KERNEL,
      "MELFAS MMS%d Touchscreen",
      data->type);
 if (!input_dev->name)
  return -ENOMEM;

 input_dev->id.bustype = BUS_I2C;
 input_dev->dev.parent = &client->dev;
 input_dev->open = mms114_input_open;
 input_dev->close = mms114_input_close;

 error = input_mt_init_slots(input_dev, MMS114_MAX_TOUCH,
        INPUT_MT_DIRECT);
 if (error)
  return error;

 input_set_drvdata(input_dev, data);
 i2c_set_clientdata(client, data);

 data->core_reg = devm_regulator_get(&client->dev, "avdd");
 if (IS_ERR(data->core_reg)) {
  error = PTR_ERR(data->core_reg);
  dev_err(&client->dev,
   "Unable to get the Core regulator (%d)\n", error);
  return error;
 }

 data->io_reg = devm_regulator_get(&client->dev, "vdd");
 if (IS_ERR(data->io_reg)) {
  error = PTR_ERR(data->io_reg);
  dev_err(&client->dev,
   "Unable to get the IO regulator (%d)\n", error);
  return error;
 }

 error = devm_request_threaded_irq(&client->dev, client->irq,
       ((void*)0), mms114_interrupt, IRQF_ONESHOT,
       dev_name(&client->dev), data);
 if (error) {
  dev_err(&client->dev, "Failed to register interrupt\n");
  return error;
 }
 disable_irq(client->irq);

 error = input_register_device(data->input_dev);
 if (error) {
  dev_err(&client->dev, "Failed to register input device\n");
  return error;
 }

 return 0;
}
