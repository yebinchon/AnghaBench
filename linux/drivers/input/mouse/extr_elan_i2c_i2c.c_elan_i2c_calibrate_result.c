
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dummy; } ;


 int ETP_I2C_CALIBRATE_CMD ;
 int elan_i2c_read_block (struct i2c_client*,int ,int *,int) ;

__attribute__((used)) static int elan_i2c_calibrate_result(struct i2c_client *client, u8 *val)
{
 return elan_i2c_read_block(client, ETP_I2C_CALIBRATE_CMD, val, 1);
}
