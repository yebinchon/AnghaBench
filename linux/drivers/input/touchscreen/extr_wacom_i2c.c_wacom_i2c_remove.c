
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wacom_i2c {int input; } ;
struct i2c_client {int irq; } ;


 int free_irq (int ,struct wacom_i2c*) ;
 struct wacom_i2c* i2c_get_clientdata (struct i2c_client*) ;
 int input_unregister_device (int ) ;
 int kfree (struct wacom_i2c*) ;

__attribute__((used)) static int wacom_i2c_remove(struct i2c_client *client)
{
 struct wacom_i2c *wac_i2c = i2c_get_clientdata(client);

 free_irq(client->irq, wac_i2c);
 input_unregister_device(wac_i2c->input);
 kfree(wac_i2c);

 return 0;
}
