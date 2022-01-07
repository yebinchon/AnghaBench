
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lp3944_platform_data {int leds_size; } ;
struct lp3944_data {TYPE_1__* leds; } ;
struct i2c_client {int dev; } ;
struct TYPE_2__ {int type; int ldev; } ;





 struct lp3944_platform_data* dev_get_platdata (int *) ;
 struct lp3944_data* i2c_get_clientdata (struct i2c_client*) ;
 int led_classdev_unregister (int *) ;

__attribute__((used)) static int lp3944_remove(struct i2c_client *client)
{
 struct lp3944_platform_data *pdata = dev_get_platdata(&client->dev);
 struct lp3944_data *data = i2c_get_clientdata(client);
 int i;

 for (i = 0; i < pdata->leds_size; i++)
  switch (data->leds[i].type) {
  case 130:
  case 129:
   led_classdev_unregister(&data->leds[i].ldev);
   break;

  case 128:
  default:
   break;
  }

 return 0;
}
