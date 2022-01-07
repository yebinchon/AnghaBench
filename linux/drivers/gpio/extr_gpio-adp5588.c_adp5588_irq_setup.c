
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;
struct adp5588_gpio {struct i2c_client* client; } ;


 int dev_warn (int *,char*) ;

__attribute__((used)) static int adp5588_irq_setup(struct adp5588_gpio *dev)
{
 struct i2c_client *client = dev->client;
 dev_warn(&client->dev, "interrupt support not compiled in\n");

 return 0;
}
