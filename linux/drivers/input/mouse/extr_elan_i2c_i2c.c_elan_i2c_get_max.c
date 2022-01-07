
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dev; } ;
typedef int __le16 ;


 int ETP_I2C_MAX_X_AXIS_CMD ;
 int ETP_I2C_MAX_Y_AXIS_CMD ;
 int dev_err (int *,char*,int) ;
 int elan_i2c_read_cmd (struct i2c_client*,int ,int *) ;
 int le16_to_cpup (int *) ;

__attribute__((used)) static int elan_i2c_get_max(struct i2c_client *client,
       unsigned int *max_x, unsigned int *max_y)
{
 int error;
 u8 val[3];

 error = elan_i2c_read_cmd(client, ETP_I2C_MAX_X_AXIS_CMD, val);
 if (error) {
  dev_err(&client->dev, "failed to get X dimension: %d\n", error);
  return error;
 }

 *max_x = le16_to_cpup((__le16 *)val) & 0x0fff;

 error = elan_i2c_read_cmd(client, ETP_I2C_MAX_Y_AXIS_CMD, val);
 if (error) {
  dev_err(&client->dev, "failed to get Y dimension: %d\n", error);
  return error;
 }

 *max_y = le16_to_cpup((__le16 *)val) & 0x0fff;

 return 0;
}
