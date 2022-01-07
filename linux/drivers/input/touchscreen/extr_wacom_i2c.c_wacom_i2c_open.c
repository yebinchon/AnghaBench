
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wacom_i2c {struct i2c_client* client; } ;
struct input_dev {int dummy; } ;
struct i2c_client {int irq; } ;


 int enable_irq (int ) ;
 struct wacom_i2c* input_get_drvdata (struct input_dev*) ;

__attribute__((used)) static int wacom_i2c_open(struct input_dev *dev)
{
 struct wacom_i2c *wac_i2c = input_get_drvdata(dev);
 struct i2c_client *client = wac_i2c->client;

 enable_irq(client->irq);

 return 0;
}
