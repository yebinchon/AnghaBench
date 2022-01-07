
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_client {int irq; } ;
struct adp5589_kpad {int input; TYPE_1__* var; } ;
struct TYPE_2__ {int (* reg ) (int ) ;} ;


 int ADP5589_GENERAL_CFG ;
 int adp5589_gpio_remove (struct adp5589_kpad*) ;
 int adp5589_write (struct i2c_client*,int ,int ) ;
 int free_irq (int ,struct adp5589_kpad*) ;
 struct adp5589_kpad* i2c_get_clientdata (struct i2c_client*) ;
 int input_unregister_device (int ) ;
 int kfree (struct adp5589_kpad*) ;
 int stub1 (int ) ;

__attribute__((used)) static int adp5589_remove(struct i2c_client *client)
{
 struct adp5589_kpad *kpad = i2c_get_clientdata(client);

 adp5589_write(client, kpad->var->reg(ADP5589_GENERAL_CFG), 0);
 free_irq(client->irq, kpad);
 input_unregister_device(kpad->input);
 adp5589_gpio_remove(kpad);
 kfree(kpad);

 return 0;
}
