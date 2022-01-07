
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int irq; } ;
struct adp5588_kpad {int input; int work; } ;


 int CFG ;
 int adp5588_gpio_remove (struct adp5588_kpad*) ;
 int adp5588_write (struct i2c_client*,int ,int ) ;
 int cancel_delayed_work_sync (int *) ;
 int free_irq (int ,struct adp5588_kpad*) ;
 struct adp5588_kpad* i2c_get_clientdata (struct i2c_client*) ;
 int input_unregister_device (int ) ;
 int kfree (struct adp5588_kpad*) ;

__attribute__((used)) static int adp5588_remove(struct i2c_client *client)
{
 struct adp5588_kpad *kpad = i2c_get_clientdata(client);

 adp5588_write(client, CFG, 0);
 free_irq(client->irq, kpad);
 cancel_delayed_work_sync(&kpad->work);
 input_unregister_device(kpad->input);
 adp5588_gpio_remove(kpad);
 kfree(kpad);

 return 0;
}
