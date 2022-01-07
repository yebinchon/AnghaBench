
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pca953x_platform_data {int (* teardown ) (struct i2c_client*,int ,int ,int ) ;int context; } ;
struct TYPE_2__ {int ngpio; int base; } ;
struct pca953x_chip {int regulator; TYPE_1__ gpio_chip; } ;
struct i2c_client {int dev; } ;


 int dev_err (int *,char*,int) ;
 struct pca953x_platform_data* dev_get_platdata (int *) ;
 struct pca953x_chip* i2c_get_clientdata (struct i2c_client*) ;
 int regulator_disable (int ) ;
 int stub1 (struct i2c_client*,int ,int ,int ) ;

__attribute__((used)) static int pca953x_remove(struct i2c_client *client)
{
 struct pca953x_platform_data *pdata = dev_get_platdata(&client->dev);
 struct pca953x_chip *chip = i2c_get_clientdata(client);
 int ret;

 if (pdata && pdata->teardown) {
  ret = pdata->teardown(client, chip->gpio_chip.base,
    chip->gpio_chip.ngpio, pdata->context);
  if (ret < 0)
   dev_err(&client->dev, "teardown failed, %d\n", ret);
 } else {
  ret = 0;
 }

 regulator_disable(chip->regulator);

 return ret;
}
