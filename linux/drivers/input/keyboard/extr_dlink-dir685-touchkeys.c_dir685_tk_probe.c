
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {int irq; struct device dev; } ;
struct dir685_touchkeys {struct device* dev; TYPE_2__* input; int * codes; struct i2c_client* client; } ;
typedef int bl_data ;
struct TYPE_4__ {int bustype; } ;
struct TYPE_5__ {int keycodesize; int keycodemax; char* name; TYPE_1__ id; int keybit; int evbit; int * keycode; } ;


 int ARRAY_SIZE (int *) ;
 int BUS_I2C ;
 int ENODEV ;
 int ENOMEM ;
 int EV_KEY ;
 int GFP_KERNEL ;
 int IRQF_ONESHOT ;
 int KEY_DOWN ;
 int KEY_ENTER ;
 int KEY_LEFT ;
 int KEY_RESERVED ;
 int KEY_RIGHT ;
 int KEY_UP ;
 int KEY_WPS_BUTTON ;
 int __clear_bit (int ,int ) ;
 int __set_bit (int ,int ) ;
 int dev_err (struct device*,char*) ;
 int dev_warn (struct device*,char*) ;
 TYPE_2__* devm_input_allocate_device (struct device*) ;
 struct dir685_touchkeys* devm_kzalloc (struct device*,int,int ) ;
 int devm_request_threaded_irq (struct device*,int ,int *,int ,int ,char*,struct dir685_touchkeys*) ;
 int dir685_tk_irq_thread ;
 int i2c_master_send (struct i2c_client*,int*,int) ;
 int input_register_device (TYPE_2__*) ;

__attribute__((used)) static int dir685_tk_probe(struct i2c_client *client,
      const struct i2c_device_id *id)
{
 struct dir685_touchkeys *tk;
 struct device *dev = &client->dev;
 u8 bl_data[] = { 0xa7, 0x40 };
 int err;
 int i;

 tk = devm_kzalloc(&client->dev, sizeof(*tk), GFP_KERNEL);
 if (!tk)
  return -ENOMEM;

 tk->input = devm_input_allocate_device(dev);
 if (!tk->input)
  return -ENOMEM;

 tk->client = client;
 tk->dev = dev;

 tk->input->keycodesize = sizeof(u16);
 tk->input->keycodemax = ARRAY_SIZE(tk->codes);
 tk->input->keycode = tk->codes;
 tk->codes[0] = KEY_UP;
 tk->codes[1] = KEY_DOWN;
 tk->codes[2] = KEY_LEFT;
 tk->codes[3] = KEY_RIGHT;
 tk->codes[4] = KEY_ENTER;
 tk->codes[5] = KEY_WPS_BUTTON;




 tk->codes[6] = KEY_RESERVED;

 __set_bit(EV_KEY, tk->input->evbit);
 for (i = 0; i < ARRAY_SIZE(tk->codes); i++)
  __set_bit(tk->codes[i], tk->input->keybit);
 __clear_bit(KEY_RESERVED, tk->input->keybit);

 tk->input->name = "D-Link DIR-685 touchkeys";
 tk->input->id.bustype = BUS_I2C;

 err = input_register_device(tk->input);
 if (err)
  return err;


 err = i2c_master_send(client, bl_data, sizeof(bl_data));
 if (err != sizeof(bl_data))
  dev_warn(tk->dev, "error setting brightness level\n");

 if (!client->irq) {
  dev_err(dev, "no IRQ on the I2C device\n");
  return -ENODEV;
 }
 err = devm_request_threaded_irq(dev, client->irq,
     ((void*)0), dir685_tk_irq_thread,
     IRQF_ONESHOT,
     "dir685-tk", tk);
 if (err) {
  dev_err(dev, "can't request IRQ\n");
  return err;
 }

 return 0;
}
