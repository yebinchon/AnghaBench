
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qt2160_data {int input; int dwork; } ;
struct i2c_client {scalar_t__ irq; } ;


 int cancel_delayed_work_sync (int *) ;
 int free_irq (scalar_t__,struct qt2160_data*) ;
 struct qt2160_data* i2c_get_clientdata (struct i2c_client*) ;
 int input_unregister_device (int ) ;
 int kfree (struct qt2160_data*) ;
 int qt2160_unregister_leds (struct qt2160_data*) ;

__attribute__((used)) static int qt2160_remove(struct i2c_client *client)
{
 struct qt2160_data *qt2160 = i2c_get_clientdata(client);

 qt2160_unregister_leds(qt2160);


 if (client->irq)
  free_irq(client->irq, qt2160);

 cancel_delayed_work_sync(&qt2160->dwork);

 input_unregister_device(qt2160->input);
 kfree(qt2160);

 return 0;
}
