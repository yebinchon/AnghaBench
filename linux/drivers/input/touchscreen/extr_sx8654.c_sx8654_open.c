
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sx8654 {struct i2c_client* client; } ;
struct input_dev {int dummy; } ;
struct i2c_client {int irq; int dev; } ;


 int CMD_PENTRG ;
 int I2C_REG_TOUCH0 ;
 int POWDLY_1_1MS ;
 int RATE_5000CPS ;
 int dev_err (int *,char*) ;
 int enable_irq (int ) ;
 int i2c_smbus_write_byte (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;
 struct sx8654* input_get_drvdata (struct input_dev*) ;

__attribute__((used)) static int sx8654_open(struct input_dev *dev)
{
 struct sx8654 *sx8654 = input_get_drvdata(dev);
 struct i2c_client *client = sx8654->client;
 int error;


 error = i2c_smbus_write_byte_data(client, I2C_REG_TOUCH0,
       RATE_5000CPS | POWDLY_1_1MS);
 if (error) {
  dev_err(&client->dev, "writing to I2C_REG_TOUCH0 failed");
  return error;
 }

 error = i2c_smbus_write_byte(client, CMD_PENTRG);
 if (error) {
  dev_err(&client->dev, "writing command CMD_PENTRG failed");
  return error;
 }

 enable_irq(client->irq);

 return 0;
}
