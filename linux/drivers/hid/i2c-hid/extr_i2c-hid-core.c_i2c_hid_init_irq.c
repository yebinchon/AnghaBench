
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_hid {int dummy; } ;
struct i2c_client {int irq; int name; int dev; } ;


 unsigned long IRQF_ONESHOT ;
 unsigned long IRQF_TRIGGER_LOW ;
 int dev_dbg (int *,char*,int ) ;
 int dev_warn (int *,char*,int ,int ,int) ;
 struct i2c_hid* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_hid_irq ;
 int irq_get_trigger_type (int ) ;
 int request_threaded_irq (int ,int *,int ,unsigned long,int ,struct i2c_hid*) ;

__attribute__((used)) static int i2c_hid_init_irq(struct i2c_client *client)
{
 struct i2c_hid *ihid = i2c_get_clientdata(client);
 unsigned long irqflags = 0;
 int ret;

 dev_dbg(&client->dev, "Requesting IRQ: %d\n", client->irq);

 if (!irq_get_trigger_type(client->irq))
  irqflags = IRQF_TRIGGER_LOW;

 ret = request_threaded_irq(client->irq, ((void*)0), i2c_hid_irq,
       irqflags | IRQF_ONESHOT, client->name, ihid);
 if (ret < 0) {
  dev_warn(&client->dev,
   "Could not register for %s interrupt, irq = %d,"
   " ret = %d\n",
   client->name, client->irq, ret);

  return ret;
 }

 return 0;
}
