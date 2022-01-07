
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {scalar_t__ irq; int dev; } ;
struct bma150_data {int input_polled; int input; } ;


 int free_irq (scalar_t__,struct bma150_data*) ;
 struct bma150_data* i2c_get_clientdata (struct i2c_client*) ;
 int input_free_polled_device (int ) ;
 int input_unregister_device (int ) ;
 int input_unregister_polled_device (int ) ;
 int kfree (struct bma150_data*) ;
 int pm_runtime_disable (int *) ;

__attribute__((used)) static int bma150_remove(struct i2c_client *client)
{
 struct bma150_data *bma150 = i2c_get_clientdata(client);

 pm_runtime_disable(&client->dev);

 if (client->irq > 0) {
  free_irq(client->irq, bma150);
  input_unregister_device(bma150->input);
 } else {
  input_unregister_polled_device(bma150->input_polled);
  input_free_polled_device(bma150->input_polled);
 }

 kfree(bma150);

 return 0;
}
