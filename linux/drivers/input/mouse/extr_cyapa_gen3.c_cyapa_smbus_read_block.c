
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dummy; } ;
struct cyapa {struct i2c_client* client; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int I2C_SMBUS_BLOCK_MAX ;
 int SMBUS_BYTE_BLOCK_CMD_MASK ;
 int SMBUS_ENCODE_IDX (int,int) ;
 int SMBUS_ENCODE_RW (int,int ) ;
 int SMBUS_GROUP_BLOCK_CMD_MASK ;
 int SMBUS_READ ;
 size_t i2c_smbus_read_block_data (struct i2c_client*,int,int*) ;

ssize_t cyapa_smbus_read_block(struct cyapa *cyapa, u8 cmd, size_t len,
          u8 *values)
{
 ssize_t ret;
 u8 index;
 u8 smbus_cmd;
 u8 *buf;
 struct i2c_client *client = cyapa->client;

 if (!(SMBUS_BYTE_BLOCK_CMD_MASK & cmd))
  return -EINVAL;

 if (SMBUS_GROUP_BLOCK_CMD_MASK & cmd) {

  smbus_cmd = SMBUS_ENCODE_RW(cmd, SMBUS_READ);
  ret = i2c_smbus_read_block_data(client, smbus_cmd, values);
  goto out;
 }

 ret = 0;
 for (index = 0; index * I2C_SMBUS_BLOCK_MAX < len; index++) {
  smbus_cmd = SMBUS_ENCODE_IDX(cmd, index);
  smbus_cmd = SMBUS_ENCODE_RW(smbus_cmd, SMBUS_READ);
  buf = values + I2C_SMBUS_BLOCK_MAX * index;
  ret = i2c_smbus_read_block_data(client, smbus_cmd, buf);
  if (ret < 0)
   goto out;
 }

out:
 return ret > 0 ? len : ret;
}
