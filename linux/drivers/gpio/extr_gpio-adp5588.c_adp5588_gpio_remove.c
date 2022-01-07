
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct i2c_client {int dev; } ;
struct adp5588_gpio_platform_data {int (* teardown ) (struct i2c_client*,int ,int ,int ) ;int context; } ;
struct TYPE_3__ {int ngpio; int base; } ;
struct adp5588_gpio {TYPE_2__* client; TYPE_1__ gpio_chip; } ;
struct TYPE_4__ {scalar_t__ irq; } ;


 int dev_err (int *,char*,int) ;
 struct adp5588_gpio_platform_data* dev_get_platdata (int *) ;
 int free_irq (scalar_t__,struct adp5588_gpio*) ;
 struct adp5588_gpio* i2c_get_clientdata (struct i2c_client*) ;
 int stub1 (struct i2c_client*,int ,int ,int ) ;

__attribute__((used)) static int adp5588_gpio_remove(struct i2c_client *client)
{
 struct adp5588_gpio_platform_data *pdata =
   dev_get_platdata(&client->dev);
 struct adp5588_gpio *dev = i2c_get_clientdata(client);
 int ret;

 if (pdata && pdata->teardown) {
  ret = pdata->teardown(client,
          dev->gpio_chip.base, dev->gpio_chip.ngpio,
          pdata->context);
  if (ret < 0) {
   dev_err(&client->dev, "teardown failed %d\n", ret);
   return ret;
  }
 }

 if (dev->client->irq)
  free_irq(dev->client->irq, dev);

 return 0;
}
