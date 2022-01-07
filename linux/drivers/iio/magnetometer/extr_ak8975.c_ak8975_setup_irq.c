
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int irq; int dev; } ;
struct ak8975_data {int eoc_irq; int eoc_gpio; int flags; int data_ready_queue; struct i2c_client* client; } ;


 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_RISING ;
 int ak8975_irq_handler ;
 int clear_bit (int ,int *) ;
 int dev_err (int *,char*,int,int ,int) ;
 int dev_name (int *) ;
 int devm_request_irq (int *,int,int ,int,int ,struct ak8975_data*) ;
 int gpio_to_irq (int ) ;
 int init_waitqueue_head (int *) ;

__attribute__((used)) static int ak8975_setup_irq(struct ak8975_data *data)
{
 struct i2c_client *client = data->client;
 int rc;
 int irq;

 init_waitqueue_head(&data->data_ready_queue);
 clear_bit(0, &data->flags);
 if (client->irq)
  irq = client->irq;
 else
  irq = gpio_to_irq(data->eoc_gpio);

 rc = devm_request_irq(&client->dev, irq, ak8975_irq_handler,
         IRQF_TRIGGER_RISING | IRQF_ONESHOT,
         dev_name(&client->dev), data);
 if (rc < 0) {
  dev_err(&client->dev,
   "irq %d request failed, (gpio %d): %d\n",
   irq, data->eoc_gpio, rc);
  return rc;
 }

 data->eoc_irq = irq;

 return rc;
}
