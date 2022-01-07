
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct synaptics_i2c {int input; TYPE_1__* client; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int irq; int dev; } ;
struct TYPE_2__ {int dev; int irq; } ;


 int DRIVER_NAME ;
 int ENOMEM ;
 int INTERRUPT_EN_REG ;
 int IRQ_TYPE_EDGE_FALLING ;
 int dev_dbg (int *,char*,int ) ;
 int dev_err (int *,char*,int) ;
 int dev_warn (int *,char*,int) ;
 int i2c_set_clientdata (struct i2c_client*,struct synaptics_i2c*) ;
 int input_allocate_device () ;
 int input_free_device (int ) ;
 int input_register_device (int ) ;
 int kfree (struct synaptics_i2c*) ;
 int polling_req ;
 int request_irq (int ,int ,int ,int ,struct synaptics_i2c*) ;
 int scan_rate ;
 int synaptics_i2c_irq ;
 int synaptics_i2c_reg_set (TYPE_1__*,int ,int ) ;
 int synaptics_i2c_reset_config (struct i2c_client*) ;
 int synaptics_i2c_set_input_params (struct synaptics_i2c*) ;
 struct synaptics_i2c* synaptics_i2c_touch_create (struct i2c_client*) ;

__attribute__((used)) static int synaptics_i2c_probe(struct i2c_client *client,
          const struct i2c_device_id *dev_id)
{
 int ret;
 struct synaptics_i2c *touch;

 touch = synaptics_i2c_touch_create(client);
 if (!touch)
  return -ENOMEM;

 ret = synaptics_i2c_reset_config(client);
 if (ret)
  goto err_mem_free;

 if (client->irq < 1)
  polling_req = 1;

 touch->input = input_allocate_device();
 if (!touch->input) {
  ret = -ENOMEM;
  goto err_mem_free;
 }

 synaptics_i2c_set_input_params(touch);

 if (!polling_req) {
  dev_dbg(&touch->client->dev,
    "Requesting IRQ: %d\n", touch->client->irq);

  ret = request_irq(touch->client->irq, synaptics_i2c_irq,
      IRQ_TYPE_EDGE_FALLING,
      DRIVER_NAME, touch);
  if (ret) {
   dev_warn(&touch->client->dev,
      "IRQ request failed: %d, "
      "falling back to polling\n", ret);
   polling_req = 1;
   synaptics_i2c_reg_set(touch->client,
           INTERRUPT_EN_REG, 0);
  }
 }

 if (polling_req)
  dev_dbg(&touch->client->dev,
    "Using polling at rate: %d times/sec\n", scan_rate);


 ret = input_register_device(touch->input);
 if (ret) {
  dev_err(&client->dev,
    "Input device register failed: %d\n", ret);
  goto err_input_free;
 }

 i2c_set_clientdata(client, touch);

 return 0;

err_input_free:
 input_free_device(touch->input);
err_mem_free:
 kfree(touch);

 return ret;
}
