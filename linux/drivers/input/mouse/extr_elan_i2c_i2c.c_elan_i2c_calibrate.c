
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int ETP_I2C_CALIBRATE_CMD ;
 int elan_i2c_write_cmd (struct i2c_client*,int ,int) ;

__attribute__((used)) static int elan_i2c_calibrate(struct i2c_client *client)
{
 return elan_i2c_write_cmd(client, ETP_I2C_CALIBRATE_CMD, 1);
}
