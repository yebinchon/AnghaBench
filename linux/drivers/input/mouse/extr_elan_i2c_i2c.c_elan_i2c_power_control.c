
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct i2c_client {int dev; } ;
typedef int __le16 ;


 int ETP_DISABLE_POWER ;
 int ETP_I2C_POWER_CMD ;
 int dev_err (int *,char*,int) ;
 int elan_i2c_read_cmd (struct i2c_client*,int ,int *) ;
 int elan_i2c_write_cmd (struct i2c_client*,int ,int ) ;
 int le16_to_cpup (int *) ;

__attribute__((used)) static int elan_i2c_power_control(struct i2c_client *client, bool enable)
{
 u8 val[2];
 u16 reg;
 int error;

 error = elan_i2c_read_cmd(client, ETP_I2C_POWER_CMD, val);
 if (error) {
  dev_err(&client->dev,
   "failed to read current power state: %d\n",
   error);
  return error;
 }

 reg = le16_to_cpup((__le16 *)val);
 if (enable)
  reg &= ~ETP_DISABLE_POWER;
 else
  reg |= ETP_DISABLE_POWER;

 error = elan_i2c_write_cmd(client, ETP_I2C_POWER_CMD, reg);
 if (error) {
  dev_err(&client->dev,
   "failed to write current power state: %d\n",
   error);
  return error;
 }

 return 0;
}
