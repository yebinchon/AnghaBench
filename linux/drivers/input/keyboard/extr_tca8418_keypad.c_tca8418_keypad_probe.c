
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct tca8418_keypad {int row_shift; struct input_dev* input; struct i2c_client* client; } ;
struct TYPE_3__ {int vendor; int product; int version; int bustype; } ;
struct input_dev {int evbit; TYPE_1__ id; int name; } ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {int irq; int name; TYPE_2__* adapter; struct device dev; } ;
struct TYPE_4__ {int dev; } ;


 int BUS_I2C ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int EV_MSC ;
 int EV_REP ;
 int GFP_KERNEL ;
 int I2C_FUNC_SMBUS_BYTE ;
 int IRQF_ONESHOT ;
 int IRQF_SHARED ;
 int MSC_SCAN ;
 int REG_KEY_LCK_EC ;
 scalar_t__ TCA8418_MAX_COLS ;
 scalar_t__ TCA8418_MAX_ROWS ;
 int __set_bit (int ,int ) ;
 int dev_driver_string (int *) ;
 int dev_err (struct device*,char*,...) ;
 scalar_t__ device_property_read_bool (struct device*,char*) ;
 struct input_dev* devm_input_allocate_device (struct device*) ;
 struct tca8418_keypad* devm_kzalloc (struct device*,int,int ) ;
 int devm_request_threaded_irq (struct device*,int ,int *,int ,int,int ,struct tca8418_keypad*) ;
 int get_count_order (scalar_t__) ;
 int i2c_check_functionality (TYPE_2__*,int ) ;
 int input_register_device (struct input_dev*) ;
 int input_set_capability (struct input_dev*,int ,int ) ;
 int matrix_keypad_build_keymap (int *,int *,scalar_t__,scalar_t__,int *,struct input_dev*) ;
 int matrix_keypad_parse_properties (struct device*,scalar_t__*,scalar_t__*) ;
 int tca8418_configure (struct tca8418_keypad*,scalar_t__,scalar_t__) ;
 int tca8418_irq_handler ;
 int tca8418_read_byte (struct tca8418_keypad*,int ,int *) ;

__attribute__((used)) static int tca8418_keypad_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct device *dev = &client->dev;
 struct tca8418_keypad *keypad_data;
 struct input_dev *input;
 u32 rows = 0, cols = 0;
 int error, row_shift;
 u8 reg;


 if (!i2c_check_functionality(client->adapter, I2C_FUNC_SMBUS_BYTE)) {
  dev_err(dev, "%s adapter not supported\n",
   dev_driver_string(&client->adapter->dev));
  return -ENODEV;
 }

 error = matrix_keypad_parse_properties(dev, &rows, &cols);
 if (error)
  return error;

 if (!rows || rows > TCA8418_MAX_ROWS) {
  dev_err(dev, "invalid rows\n");
  return -EINVAL;
 }

 if (!cols || cols > TCA8418_MAX_COLS) {
  dev_err(dev, "invalid columns\n");
  return -EINVAL;
 }

 row_shift = get_count_order(cols);


 keypad_data = devm_kzalloc(dev, sizeof(*keypad_data), GFP_KERNEL);
 if (!keypad_data)
  return -ENOMEM;

 keypad_data->client = client;
 keypad_data->row_shift = row_shift;


 error = tca8418_read_byte(keypad_data, REG_KEY_LCK_EC, &reg);
 if (error)
  return -ENODEV;


 input = devm_input_allocate_device(dev);
 if (!input)
  return -ENOMEM;

 keypad_data->input = input;

 input->name = client->name;
 input->id.bustype = BUS_I2C;
 input->id.vendor = 0x0001;
 input->id.product = 0x001;
 input->id.version = 0x0001;

 error = matrix_keypad_build_keymap(((void*)0), ((void*)0), rows, cols, ((void*)0), input);
 if (error) {
  dev_err(dev, "Failed to build keymap\n");
  return error;
 }

 if (device_property_read_bool(dev, "keypad,autorepeat"))
  __set_bit(EV_REP, input->evbit);

 input_set_capability(input, EV_MSC, MSC_SCAN);

 error = devm_request_threaded_irq(dev, client->irq,
       ((void*)0), tca8418_irq_handler,
       IRQF_SHARED | IRQF_ONESHOT,
       client->name, keypad_data);
 if (error) {
  dev_err(dev, "Unable to claim irq %d; error %d\n",
   client->irq, error);
  return error;
 }


 error = tca8418_configure(keypad_data, rows, cols);
 if (error < 0)
  return error;

 error = input_register_device(input);
 if (error) {
  dev_err(dev, "Unable to register input device, error: %d\n",
   error);
  return error;
 }

 return 0;
}
