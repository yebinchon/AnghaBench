
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mxt_data {int irq; } ;
struct TYPE_2__ {int kobj; } ;
struct i2c_client {TYPE_1__ dev; } ;


 int disable_irq (int ) ;
 struct mxt_data* i2c_get_clientdata (struct i2c_client*) ;
 int mxt_attr_group ;
 int mxt_free_input_device (struct mxt_data*) ;
 int mxt_free_object_table (struct mxt_data*) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static int mxt_remove(struct i2c_client *client)
{
 struct mxt_data *data = i2c_get_clientdata(client);

 disable_irq(data->irq);
 sysfs_remove_group(&client->dev.kobj, &mxt_attr_group);
 mxt_free_input_device(data);
 mxt_free_object_table(data);

 return 0;
}
