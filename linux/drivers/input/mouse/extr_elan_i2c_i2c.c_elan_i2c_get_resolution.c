
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dev; } ;


 int ETP_I2C_RESOLUTION_CMD ;
 int dev_err (int *,char*,int) ;
 int elan_i2c_read_cmd (struct i2c_client*,int ,int *) ;

__attribute__((used)) static int elan_i2c_get_resolution(struct i2c_client *client,
       u8 *hw_res_x, u8 *hw_res_y)
{
 int error;
 u8 val[3];

 error = elan_i2c_read_cmd(client, ETP_I2C_RESOLUTION_CMD, val);
 if (error) {
  dev_err(&client->dev, "failed to get resolution: %d\n", error);
  return error;
 }

 *hw_res_x = val[0];
 *hw_res_y = val[1];

 return 0;
}
