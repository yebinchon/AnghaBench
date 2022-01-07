
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcs_touchkey_chip {int pressbit; int press_invert; scalar_t__ baseval; int status_reg; } ;
struct mcs_touchkey_data {unsigned int key_val; int key_code; int * keycodes; struct input_dev* input_dev; struct i2c_client* client; struct mcs_touchkey_chip chip; } ;
struct input_dev {int dummy; } ;
struct i2c_client {int dev; } ;
typedef int irqreturn_t ;


 int EV_MSC ;
 int IRQ_HANDLED ;
 int MSC_SCAN ;
 int dev_dbg (int *,char*,unsigned int,int ,char*) ;
 int dev_err (int *,char*,int) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int input_event (struct input_dev*,int ,int ,unsigned int) ;
 int input_report_key (struct input_dev*,int ,unsigned int) ;
 int input_sync (struct input_dev*) ;

__attribute__((used)) static irqreturn_t mcs_touchkey_interrupt(int irq, void *dev_id)
{
 struct mcs_touchkey_data *data = dev_id;
 struct mcs_touchkey_chip *chip = &data->chip;
 struct i2c_client *client = data->client;
 struct input_dev *input = data->input_dev;
 unsigned int key_val;
 unsigned int pressed;
 int val;

 val = i2c_smbus_read_byte_data(client, chip->status_reg);
 if (val < 0) {
  dev_err(&client->dev, "i2c read error [%d]\n", val);
  goto out;
 }

 pressed = (val & (1 << chip->pressbit)) >> chip->pressbit;
 if (chip->press_invert)
  pressed ^= chip->press_invert;


 if (pressed) {
  key_val = val & (0xff >> (8 - chip->pressbit));
  if (!key_val)
   goto out;
  key_val -= chip->baseval;
  data->key_code = data->keycodes[key_val];
  data->key_val = key_val;
 }

 input_event(input, EV_MSC, MSC_SCAN, data->key_val);
 input_report_key(input, data->key_code, pressed);
 input_sync(input);

 dev_dbg(&client->dev, "key %d %d %s\n", data->key_val, data->key_code,
  pressed ? "pressed" : "released");

 out:
 return IRQ_HANDLED;
}
