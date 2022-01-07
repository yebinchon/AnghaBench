
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kp_data {int idev; } ;
struct i2c_client {int irq; } ;


 int free_irq (int ,struct kp_data*) ;
 struct kp_data* i2c_get_clientdata (struct i2c_client*) ;
 int input_unregister_device (int ) ;
 int kfree (struct kp_data*) ;

__attribute__((used)) static int pcf8574_kp_remove(struct i2c_client *client)
{
 struct kp_data *lp = i2c_get_clientdata(client);

 free_irq(client->irq, lp);

 input_unregister_device(lp->idev);
 kfree(lp);

 return 0;
}
