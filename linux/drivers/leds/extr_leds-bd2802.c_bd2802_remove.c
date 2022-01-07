
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct i2c_client {int dummy; } ;
struct bd2802_led {TYPE_2__* client; scalar_t__ adf_on; TYPE_1__* pdata; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int reset_gpio; } ;


 int ARRAY_SIZE (int *) ;
 int * bd2802_attributes ;
 int bd2802_disable_adv_conf (struct bd2802_led*) ;
 int bd2802_unregister_led_classdev (struct bd2802_led*) ;
 int device_remove_file (int *,int ) ;
 int gpio_set_value (int ,int ) ;
 struct bd2802_led* i2c_get_clientdata (struct i2c_client*) ;

__attribute__((used)) static int bd2802_remove(struct i2c_client *client)
{
 struct bd2802_led *led = i2c_get_clientdata(client);
 int i;

 gpio_set_value(led->pdata->reset_gpio, 0);
 bd2802_unregister_led_classdev(led);
 if (led->adf_on)
  bd2802_disable_adv_conf(led);
 for (i = 0; i < ARRAY_SIZE(bd2802_attributes); i++)
  device_remove_file(&led->client->dev, bd2802_attributes[i]);

 return 0;
}
