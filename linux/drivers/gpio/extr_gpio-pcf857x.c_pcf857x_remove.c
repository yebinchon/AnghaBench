
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcf857x_platform_data {int (* teardown ) (struct i2c_client*,int ,int ,int ) ;int context; } ;
struct TYPE_2__ {int ngpio; int base; } ;
struct pcf857x {TYPE_1__ chip; } ;
struct i2c_client {int dev; } ;


 int dev_err (int *,char*,char*,int) ;
 struct pcf857x_platform_data* dev_get_platdata (int *) ;
 struct pcf857x* i2c_get_clientdata (struct i2c_client*) ;
 int stub1 (struct i2c_client*,int ,int ,int ) ;

__attribute__((used)) static int pcf857x_remove(struct i2c_client *client)
{
 struct pcf857x_platform_data *pdata = dev_get_platdata(&client->dev);
 struct pcf857x *gpio = i2c_get_clientdata(client);
 int status = 0;

 if (pdata && pdata->teardown) {
  status = pdata->teardown(client,
    gpio->chip.base, gpio->chip.ngpio,
    pdata->context);
  if (status < 0) {
   dev_err(&client->dev, "%s --> %d\n",
     "teardown", status);
   return status;
  }
 }

 return status;
}
