
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;


 int ADT7470_REG_CFG ;
 int dev_err (int *,char*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;

__attribute__((used)) static void adt7470_init_client(struct i2c_client *client)
{
 int reg = i2c_smbus_read_byte_data(client, ADT7470_REG_CFG);

 if (reg < 0) {
  dev_err(&client->dev, "cannot read configuration register\n");
 } else {

  i2c_smbus_write_byte_data(client, ADT7470_REG_CFG, reg | 3);
 }
}
