
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct device_node* of_node; } ;
struct i2c_client {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;


 int ENODEV ;
 int dev_err (TYPE_1__*,char*,int) ;
 int gpio_direction_input (int) ;
 int gpio_direction_output (int,int ) ;
 int gpio_free (int) ;
 int gpio_is_valid (int) ;
 int gpio_request (int,char*) ;
 int gpio_set_value (int,int) ;
 int of_get_named_gpio (struct device_node*,char*,int ) ;

__attribute__((used)) static int egalax_wake_up_device(struct i2c_client *client)
{
 struct device_node *np = client->dev.of_node;
 int gpio;
 int ret;

 if (!np)
  return -ENODEV;

 gpio = of_get_named_gpio(np, "wakeup-gpios", 0);
 if (!gpio_is_valid(gpio))
  return -ENODEV;

 ret = gpio_request(gpio, "egalax_irq");
 if (ret < 0) {
  dev_err(&client->dev,
   "request gpio failed, cannot wake up controller: %d\n",
   ret);
  return ret;
 }


 gpio_direction_output(gpio, 0);
 gpio_set_value(gpio, 1);


 gpio_direction_input(gpio);
 gpio_free(gpio);

 return 0;
}
