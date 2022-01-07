
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct lm8333_platform_data {int active_time; int debounce_time; int matrix_data; } ;
struct lm8333 {int keycodes; struct input_dev* input; struct i2c_client* client; } ;
struct TYPE_4__ {int bustype; } ;
struct TYPE_3__ {int * parent; } ;
struct input_dev {TYPE_2__ id; TYPE_1__ dev; int name; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int irq; int dev; int name; } ;


 int BUS_I2C ;
 int EINVAL ;
 int ENOMEM ;
 int EV_MSC ;
 int GFP_KERNEL ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_FALLING ;
 int LM8333_ACTIVE ;
 int LM8333_DEBOUNCE ;
 int LM8333_NUM_COLS ;
 int LM8333_NUM_ROWS ;
 int MSC_SCAN ;
 int dev_err (int *,char*) ;
 struct lm8333_platform_data* dev_get_platdata (int *) ;
 int dev_warn (int *,char*) ;
 int free_irq (int ,struct lm8333*) ;
 int i2c_set_clientdata (struct i2c_client*,struct lm8333*) ;
 struct input_dev* input_allocate_device () ;
 int input_free_device (struct input_dev*) ;
 int input_register_device (struct input_dev*) ;
 int input_set_capability (struct input_dev*,int ,int ) ;
 int kfree (struct lm8333*) ;
 struct lm8333* kzalloc (int,int ) ;
 int lm8333_irq_thread ;
 int lm8333_write8 (struct lm8333*,int ,int) ;
 int matrix_keypad_build_keymap (int ,int *,int ,int ,int ,struct input_dev*) ;
 int request_threaded_irq (int ,int *,int ,int,char*,struct lm8333*) ;

__attribute__((used)) static int lm8333_probe(struct i2c_client *client,
      const struct i2c_device_id *id)
{
 const struct lm8333_platform_data *pdata =
   dev_get_platdata(&client->dev);
 struct lm8333 *lm8333;
 struct input_dev *input;
 int err, active_time;

 if (!pdata)
  return -EINVAL;

 active_time = pdata->active_time ?: 500;
 if (active_time / 3 <= pdata->debounce_time / 3) {
  dev_err(&client->dev, "Active time not big enough!\n");
  return -EINVAL;
 }

 lm8333 = kzalloc(sizeof(*lm8333), GFP_KERNEL);
 input = input_allocate_device();
 if (!lm8333 || !input) {
  err = -ENOMEM;
  goto free_mem;
 }

 lm8333->client = client;
 lm8333->input = input;

 input->name = client->name;
 input->dev.parent = &client->dev;
 input->id.bustype = BUS_I2C;

 input_set_capability(input, EV_MSC, MSC_SCAN);

 err = matrix_keypad_build_keymap(pdata->matrix_data, ((void*)0),
      LM8333_NUM_ROWS, LM8333_NUM_COLS,
      lm8333->keycodes, input);
 if (err)
  goto free_mem;

 if (pdata->debounce_time) {
  err = lm8333_write8(lm8333, LM8333_DEBOUNCE,
        pdata->debounce_time / 3);
  if (err)
   dev_warn(&client->dev, "Unable to set debounce time\n");
 }

 if (pdata->active_time) {
  err = lm8333_write8(lm8333, LM8333_ACTIVE,
        pdata->active_time / 3);
  if (err)
   dev_warn(&client->dev, "Unable to set active time\n");
 }

 err = request_threaded_irq(client->irq, ((void*)0), lm8333_irq_thread,
       IRQF_TRIGGER_FALLING | IRQF_ONESHOT,
       "lm8333", lm8333);
 if (err)
  goto free_mem;

 err = input_register_device(input);
 if (err)
  goto free_irq;

 i2c_set_clientdata(client, lm8333);
 return 0;

 free_irq:
 free_irq(client->irq, lm8333);
 free_mem:
 input_free_device(input);
 kfree(lm8333);
 return err;
}
