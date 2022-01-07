
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int irq; } ;
struct cy8ctmg110 {scalar_t__ reset_pin; scalar_t__ irq_pin; int input; } ;


 int cy8ctmg110_power (struct cy8ctmg110*,int) ;
 int cy8ctmg110_set_sleepmode (struct cy8ctmg110*,int) ;
 int free_irq (int ,struct cy8ctmg110*) ;
 int gpio_free (scalar_t__) ;
 struct cy8ctmg110* i2c_get_clientdata (struct i2c_client*) ;
 int input_unregister_device (int ) ;
 int kfree (struct cy8ctmg110*) ;

__attribute__((used)) static int cy8ctmg110_remove(struct i2c_client *client)
{
 struct cy8ctmg110 *ts = i2c_get_clientdata(client);

 cy8ctmg110_set_sleepmode(ts, 1);
 cy8ctmg110_power(ts, 0);

 free_irq(client->irq, ts);
 input_unregister_device(ts->input);
 gpio_free(ts->irq_pin);
 if (ts->reset_pin)
  gpio_free(ts->reset_pin);
 kfree(ts);

 return 0;
}
