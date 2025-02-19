
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max732x_platform_data {scalar_t__ irq_base; } ;
struct max732x_chip {struct i2c_client* client; } ;
struct i2c_device_id {size_t driver_data; } ;
struct i2c_client {int dev; scalar_t__ irq; } ;


 int INT_NONE ;
 struct max732x_platform_data* dev_get_platdata (int *) ;
 int dev_warn (int *,char*) ;
 int* max732x_features ;

__attribute__((used)) static int max732x_irq_setup(struct max732x_chip *chip,
        const struct i2c_device_id *id)
{
 struct i2c_client *client = chip->client;
 struct max732x_platform_data *pdata = dev_get_platdata(&client->dev);
 int has_irq = max732x_features[id->driver_data] >> 32;

 if (((pdata && pdata->irq_base) || client->irq) && has_irq != INT_NONE)
  dev_warn(&client->dev, "interrupt support not compiled in\n");

 return 0;
}
