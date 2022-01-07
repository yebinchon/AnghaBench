
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcs_touchkey_data {int input_dev; int (* poweron ) (int) ;} ;
struct i2c_client {int irq; } ;


 int free_irq (int ,struct mcs_touchkey_data*) ;
 struct mcs_touchkey_data* i2c_get_clientdata (struct i2c_client*) ;
 int input_unregister_device (int ) ;
 int kfree (struct mcs_touchkey_data*) ;
 int stub1 (int) ;

__attribute__((used)) static int mcs_touchkey_remove(struct i2c_client *client)
{
 struct mcs_touchkey_data *data = i2c_get_clientdata(client);

 free_irq(client->irq, data);
 if (data->poweron)
  data->poweron(0);
 input_unregister_device(data->input_dev);
 kfree(data);

 return 0;
}
