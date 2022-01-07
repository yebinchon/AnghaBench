
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dev; } ;


 int MS_SENSORS_CONFIG_REG_READ ;
 int dev_dbg (int *,char*,int ) ;
 int dev_err (int *,char*) ;
 int i2c_master_recv (struct i2c_client*,int *,int) ;
 int i2c_smbus_write_byte (struct i2c_client*,int ) ;

__attribute__((used)) static int ms_sensors_read_config_reg(struct i2c_client *client,
          u8 *config_reg)
{
 int ret;

 ret = i2c_smbus_write_byte(client, MS_SENSORS_CONFIG_REG_READ);
 if (ret) {
  dev_err(&client->dev, "Unable to read config register");
  return ret;
 }

 ret = i2c_master_recv(client, config_reg, 1);
 if (ret < 0) {
  dev_err(&client->dev, "Unable to read config register");
  return ret;
 }
 dev_dbg(&client->dev, "Config register :%x\n", *config_reg);

 return 0;
}
