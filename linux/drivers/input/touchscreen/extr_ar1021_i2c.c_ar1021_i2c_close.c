
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct i2c_client {int irq; } ;
struct ar1021_i2c {struct i2c_client* client; } ;


 int disable_irq (int ) ;
 struct ar1021_i2c* input_get_drvdata (struct input_dev*) ;

__attribute__((used)) static void ar1021_i2c_close(struct input_dev *dev)
{
 struct ar1021_i2c *ar1021 = input_get_drvdata(dev);
 struct i2c_client *client = ar1021->client;

 disable_irq(client->irq);
}
