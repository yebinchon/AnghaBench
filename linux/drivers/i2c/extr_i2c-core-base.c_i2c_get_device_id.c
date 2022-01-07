
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union i2c_smbus_data {int* block; } ;
struct i2c_device_identity {int manufacturer_id; int part_id; int die_revision; } ;
struct i2c_client {int addr; struct i2c_adapter* adapter; } ;
struct i2c_adapter {int dummy; } ;


 int EOPNOTSUPP ;
 int I2C_ADDR_DEVICE_ID ;
 int I2C_FUNC_SMBUS_READ_I2C_BLOCK ;
 int I2C_SMBUS_I2C_BLOCK_DATA ;
 int I2C_SMBUS_READ ;
 int i2c_check_functionality (struct i2c_adapter*,int ) ;
 int i2c_smbus_xfer (struct i2c_adapter*,int ,int ,int ,int,int ,union i2c_smbus_data*) ;

int i2c_get_device_id(const struct i2c_client *client,
        struct i2c_device_identity *id)
{
 struct i2c_adapter *adap = client->adapter;
 union i2c_smbus_data raw_id;
 int ret;

 if (!i2c_check_functionality(adap, I2C_FUNC_SMBUS_READ_I2C_BLOCK))
  return -EOPNOTSUPP;

 raw_id.block[0] = 3;
 ret = i2c_smbus_xfer(adap, I2C_ADDR_DEVICE_ID, 0,
        I2C_SMBUS_READ, client->addr << 1,
        I2C_SMBUS_I2C_BLOCK_DATA, &raw_id);
 if (ret)
  return ret;

 id->manufacturer_id = (raw_id.block[1] << 4) | (raw_id.block[2] >> 4);
 id->part_id = ((raw_id.block[2] & 0xf) << 5) | (raw_id.block[3] >> 3);
 id->die_revision = raw_id.block[3] & 0x7;
 return 0;
}
