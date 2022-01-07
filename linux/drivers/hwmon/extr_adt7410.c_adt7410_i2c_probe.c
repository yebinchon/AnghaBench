
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_device_id {int dummy; } ;
struct i2c_client {int irq; int dev; int adapter; } ;


 int ENODEV ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int I2C_FUNC_SMBUS_WORD_DATA ;
 int adt7410_i2c_ops ;
 int adt7x10_probe (int *,int *,int ,int *) ;
 int i2c_check_functionality (int ,int) ;

__attribute__((used)) static int adt7410_i2c_probe(struct i2c_client *client,
 const struct i2c_device_id *id)
{
 if (!i2c_check_functionality(client->adapter,
   I2C_FUNC_SMBUS_BYTE_DATA | I2C_FUNC_SMBUS_WORD_DATA))
  return -ENODEV;

 return adt7x10_probe(&client->dev, ((void*)0), client->irq, &adt7410_i2c_ops);
}
