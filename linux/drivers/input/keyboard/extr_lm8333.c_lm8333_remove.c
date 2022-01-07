
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm8333 {int input; } ;
struct i2c_client {int irq; } ;


 int free_irq (int ,struct lm8333*) ;
 struct lm8333* i2c_get_clientdata (struct i2c_client*) ;
 int input_unregister_device (int ) ;
 int kfree (struct lm8333*) ;

__attribute__((used)) static int lm8333_remove(struct i2c_client *client)
{
 struct lm8333 *lm8333 = i2c_get_clientdata(client);

 free_irq(client->irq, lm8333);
 input_unregister_device(lm8333->input);
 kfree(lm8333);

 return 0;
}
