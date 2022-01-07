
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct migor_ts_priv {int irq; struct input_dev* input; struct i2c_client* client; } ;
struct TYPE_4__ {int * parent; } ;
struct TYPE_3__ {int bustype; } ;
struct input_dev {int* evbit; int close; int open; TYPE_2__ dev; TYPE_1__ id; int name; int keybit; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; int name; int irq; } ;


 int ABS_X ;
 int ABS_Y ;
 int BIT_MASK (int ) ;
 int BTN_TOUCH ;
 int BUS_I2C ;
 int ENOMEM ;
 int EV_ABS ;
 int EV_KEY ;
 int GFP_KERNEL ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_LOW ;
 int __set_bit (int ,int ) ;
 int dev_err (int *,char*) ;
 int device_init_wakeup (int *,int) ;
 int free_irq (int ,struct migor_ts_priv*) ;
 int i2c_set_clientdata (struct i2c_client*,struct migor_ts_priv*) ;
 struct input_dev* input_allocate_device () ;
 int input_free_device (struct input_dev*) ;
 int input_register_device (struct input_dev*) ;
 int input_set_abs_params (struct input_dev*,int ,int,int,int ,int ) ;
 int input_set_drvdata (struct input_dev*,struct migor_ts_priv*) ;
 int kfree (struct migor_ts_priv*) ;
 struct migor_ts_priv* kzalloc (int,int ) ;
 int migor_ts_close ;
 int migor_ts_isr ;
 int migor_ts_open ;
 int request_threaded_irq (int ,int *,int ,int,int ,struct migor_ts_priv*) ;

__attribute__((used)) static int migor_ts_probe(struct i2c_client *client,
     const struct i2c_device_id *idp)
{
 struct migor_ts_priv *priv;
 struct input_dev *input;
 int error;

 priv = kzalloc(sizeof(*priv), GFP_KERNEL);
 input = input_allocate_device();
 if (!priv || !input) {
  dev_err(&client->dev, "failed to allocate memory\n");
  error = -ENOMEM;
  goto err_free_mem;
 }

 priv->client = client;
 priv->input = input;
 priv->irq = client->irq;

 input->evbit[0] = BIT_MASK(EV_KEY) | BIT_MASK(EV_ABS);

 __set_bit(BTN_TOUCH, input->keybit);

 input_set_abs_params(input, ABS_X, 95, 955, 0, 0);
 input_set_abs_params(input, ABS_Y, 85, 935, 0, 0);

 input->name = client->name;
 input->id.bustype = BUS_I2C;
 input->dev.parent = &client->dev;

 input->open = migor_ts_open;
 input->close = migor_ts_close;

 input_set_drvdata(input, priv);

 error = request_threaded_irq(priv->irq, ((void*)0), migor_ts_isr,
                                     IRQF_TRIGGER_LOW | IRQF_ONESHOT,
                                     client->name, priv);
 if (error) {
  dev_err(&client->dev, "Unable to request touchscreen IRQ.\n");
  goto err_free_mem;
 }

 error = input_register_device(input);
 if (error)
  goto err_free_irq;

 i2c_set_clientdata(client, priv);
 device_init_wakeup(&client->dev, 1);

 return 0;

 err_free_irq:
 free_irq(priv->irq, priv);
 err_free_mem:
 input_free_device(input);
 kfree(priv);
 return error;
}
