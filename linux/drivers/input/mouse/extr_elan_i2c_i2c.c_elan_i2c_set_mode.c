
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dummy; } ;


 int ETP_I2C_SET_CMD ;
 int elan_i2c_write_cmd (struct i2c_client*,int ,int ) ;

__attribute__((used)) static int elan_i2c_set_mode(struct i2c_client *client, u8 mode)
{
 return elan_i2c_write_cmd(client, ETP_I2C_SET_CMD, mode);
}
