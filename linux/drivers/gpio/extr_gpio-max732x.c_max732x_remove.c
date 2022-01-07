
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct max732x_platform_data {int (* teardown ) (struct i2c_client*,int ,int ,int ) ;int context; } ;
struct TYPE_2__ {int ngpio; int base; } ;
struct max732x_chip {TYPE_1__ gpio_chip; } ;
struct i2c_client {int dev; } ;


 int dev_err (int *,char*,char*,int) ;
 struct max732x_platform_data* dev_get_platdata (int *) ;
 struct max732x_chip* i2c_get_clientdata (struct i2c_client*) ;
 int stub1 (struct i2c_client*,int ,int ,int ) ;

__attribute__((used)) static int max732x_remove(struct i2c_client *client)
{
 struct max732x_platform_data *pdata = dev_get_platdata(&client->dev);
 struct max732x_chip *chip = i2c_get_clientdata(client);

 if (pdata && pdata->teardown) {
  int ret;

  ret = pdata->teardown(client, chip->gpio_chip.base,
    chip->gpio_chip.ngpio, pdata->context);
  if (ret < 0) {
   dev_err(&client->dev, "%s failed, %d\n",
     "teardown", ret);
   return ret;
  }
 }

 return 0;
}
