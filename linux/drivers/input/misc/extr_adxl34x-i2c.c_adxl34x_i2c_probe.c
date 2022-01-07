
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_device_id {int dummy; } ;
struct i2c_client {int adapter; int irq; int dev; } ;
struct adxl34x {int dummy; } ;


 int EIO ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int I2C_FUNC_SMBUS_READ_I2C_BLOCK ;
 scalar_t__ IS_ERR (struct adxl34x*) ;
 int PTR_ERR (struct adxl34x*) ;
 int adxl34x_i2c_bops ;
 struct adxl34x* adxl34x_probe (int *,int ,int,int *) ;
 int adxl34x_smbus_bops ;
 int dev_err (int *,char*) ;
 int i2c_check_functionality (int ,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct adxl34x*) ;

__attribute__((used)) static int adxl34x_i2c_probe(struct i2c_client *client,
           const struct i2c_device_id *id)
{
 struct adxl34x *ac;
 int error;

 error = i2c_check_functionality(client->adapter,
   I2C_FUNC_SMBUS_BYTE_DATA);
 if (!error) {
  dev_err(&client->dev, "SMBUS Byte Data not Supported\n");
  return -EIO;
 }

 ac = adxl34x_probe(&client->dev, client->irq, 0,
      i2c_check_functionality(client->adapter,
         I2C_FUNC_SMBUS_READ_I2C_BLOCK) ?
    &adxl34x_smbus_bops : &adxl34x_i2c_bops);
 if (IS_ERR(ac))
  return PTR_ERR(ac);

 i2c_set_clientdata(client, ac);

 return 0;
}
