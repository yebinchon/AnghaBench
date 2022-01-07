
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int irq; } ;
struct gp2a_platform_data {int (* hw_shutdown ) (struct i2c_client*) ;int vout_gpio; } ;
struct gp2a_data {int input; struct gp2a_platform_data* pdata; } ;


 int free_irq (int ,struct gp2a_data*) ;
 int gpio_free (int ) ;
 struct gp2a_data* i2c_get_clientdata (struct i2c_client*) ;
 int input_unregister_device (int ) ;
 int kfree (struct gp2a_data*) ;
 int stub1 (struct i2c_client*) ;

__attribute__((used)) static int gp2a_remove(struct i2c_client *client)
{
 struct gp2a_data *dt = i2c_get_clientdata(client);
 const struct gp2a_platform_data *pdata = dt->pdata;

 free_irq(client->irq, dt);

 input_unregister_device(dt->input);
 kfree(dt);

 gpio_free(pdata->vout_gpio);

 if (pdata->hw_shutdown)
  pdata->hw_shutdown(client);

 return 0;
}
