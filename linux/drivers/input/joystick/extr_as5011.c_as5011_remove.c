
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct as5011_device {int input_dev; int button_gpio; int button_irq; int axis_irq; } ;


 int free_irq (int ,struct as5011_device*) ;
 int gpio_free (int ) ;
 struct as5011_device* i2c_get_clientdata (struct i2c_client*) ;
 int input_unregister_device (int ) ;
 int kfree (struct as5011_device*) ;

__attribute__((used)) static int as5011_remove(struct i2c_client *client)
{
 struct as5011_device *as5011 = i2c_get_clientdata(client);

 free_irq(as5011->axis_irq, as5011);
 free_irq(as5011->button_irq, as5011);
 gpio_free(as5011->button_gpio);

 input_unregister_device(as5011->input_dev);
 kfree(as5011);

 return 0;
}
