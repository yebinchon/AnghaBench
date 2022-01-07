
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qt1070_data {int input; } ;
struct i2c_client {int irq; } ;


 int free_irq (int ,struct qt1070_data*) ;
 struct qt1070_data* i2c_get_clientdata (struct i2c_client*) ;
 int input_unregister_device (int ) ;
 int kfree (struct qt1070_data*) ;

__attribute__((used)) static int qt1070_remove(struct i2c_client *client)
{
 struct qt1070_data *data = i2c_get_clientdata(client);


 free_irq(client->irq, data);

 input_unregister_device(data->input);
 kfree(data);

 return 0;
}
