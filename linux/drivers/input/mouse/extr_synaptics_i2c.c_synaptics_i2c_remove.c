
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct synaptics_i2c {int input; } ;
struct i2c_client {int irq; } ;


 int free_irq (int ,struct synaptics_i2c*) ;
 struct synaptics_i2c* i2c_get_clientdata (struct i2c_client*) ;
 int input_unregister_device (int ) ;
 int kfree (struct synaptics_i2c*) ;
 int polling_req ;

__attribute__((used)) static int synaptics_i2c_remove(struct i2c_client *client)
{
 struct synaptics_i2c *touch = i2c_get_clientdata(client);

 if (!polling_req)
  free_irq(client->irq, touch);

 input_unregister_device(touch->input);
 kfree(touch);

 return 0;
}
