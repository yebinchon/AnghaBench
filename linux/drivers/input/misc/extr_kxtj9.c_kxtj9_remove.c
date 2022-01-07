
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int (* exit ) () ;} ;
struct kxtj9_data {TYPE_2__ pdata; int input_dev; } ;
struct TYPE_3__ {int kobj; } ;
struct i2c_client {scalar_t__ irq; TYPE_1__ dev; } ;


 int free_irq (scalar_t__,struct kxtj9_data*) ;
 struct kxtj9_data* i2c_get_clientdata (struct i2c_client*) ;
 int input_unregister_device (int ) ;
 int kfree (struct kxtj9_data*) ;
 int kxtj9_attribute_group ;
 int kxtj9_teardown_polled_device (struct kxtj9_data*) ;
 int stub1 () ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static int kxtj9_remove(struct i2c_client *client)
{
 struct kxtj9_data *tj9 = i2c_get_clientdata(client);

 if (client->irq) {
  sysfs_remove_group(&client->dev.kobj, &kxtj9_attribute_group);
  free_irq(client->irq, tj9);
  input_unregister_device(tj9->input_dev);
 } else {
  kxtj9_teardown_polled_device(tj9);
 }

 if (tj9->pdata.exit)
  tj9->pdata.exit();

 kfree(tj9);

 return 0;
}
