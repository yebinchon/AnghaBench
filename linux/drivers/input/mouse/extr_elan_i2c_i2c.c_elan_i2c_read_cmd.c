
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct i2c_client {int dev; } ;


 int ETP_I2C_INF_LENGTH ;
 int dev_err (int *,char*,int ) ;
 int elan_i2c_read_block (struct i2c_client*,int ,int *,int ) ;

__attribute__((used)) static int elan_i2c_read_cmd(struct i2c_client *client, u16 reg, u8 *val)
{
 int retval;

 retval = elan_i2c_read_block(client, reg, val, ETP_I2C_INF_LENGTH);
 if (retval < 0) {
  dev_err(&client->dev, "reading cmd (0x%04x) fail.\n", reg);
  return retval;
 }

 return 0;
}
