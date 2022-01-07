
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct input_dev {int dummy; } ;
struct i2c_client {int irq; } ;
struct ar1021_i2c {struct i2c_client* client; } ;
typedef int cmd_enable_touch ;




 int enable_irq (int ) ;
 int i2c_master_send (struct i2c_client*,int const*,int) ;
 struct ar1021_i2c* input_get_drvdata (struct input_dev*) ;

__attribute__((used)) static int ar1021_i2c_open(struct input_dev *dev)
{
 static const u8 cmd_enable_touch[] = {
  129,
  0x01,
  128
 };
 struct ar1021_i2c *ar1021 = input_get_drvdata(dev);
 struct i2c_client *client = ar1021->client;
 int error;

 error = i2c_master_send(ar1021->client, cmd_enable_touch,
    sizeof(cmd_enable_touch));
 if (error < 0)
  return error;

 enable_irq(client->irq);

 return 0;
}
