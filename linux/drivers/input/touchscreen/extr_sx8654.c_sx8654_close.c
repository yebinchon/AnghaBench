
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sx8654 {TYPE_1__* data; int timer; struct i2c_client* client; } ;
struct input_dev {int dummy; } ;
struct i2c_client {int dev; int irq; } ;
struct TYPE_2__ {int cmd_manual; int has_irq_penrelease; } ;


 int I2C_REG_TOUCH0 ;
 int RATE_MANUAL ;
 int del_timer_sync (int *) ;
 int dev_err (int *,char*) ;
 int disable_irq (int ) ;
 int i2c_smbus_write_byte (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int ) ;
 struct sx8654* input_get_drvdata (struct input_dev*) ;

__attribute__((used)) static void sx8654_close(struct input_dev *dev)
{
 struct sx8654 *sx8654 = input_get_drvdata(dev);
 struct i2c_client *client = sx8654->client;
 int error;

 disable_irq(client->irq);

 if (!sx8654->data->has_irq_penrelease)
  del_timer_sync(&sx8654->timer);


 error = i2c_smbus_write_byte(client, sx8654->data->cmd_manual);
 if (error) {
  dev_err(&client->dev, "writing command CMD_MANUAL failed");
  return;
 }

 error = i2c_smbus_write_byte_data(client, I2C_REG_TOUCH0, RATE_MANUAL);
 if (error) {
  dev_err(&client->dev, "writing to I2C_REG_TOUCH0 failed");
  return;
 }
}
