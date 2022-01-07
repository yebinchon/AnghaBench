
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int adapter; } ;


 int CYAPA_ADAPTER_FUNC_I2C ;
 int CYAPA_ADAPTER_FUNC_NONE ;
 int CYAPA_ADAPTER_FUNC_SMBUS ;
 int I2C_FUNC_I2C ;
 int I2C_FUNC_SMBUS_BLOCK_DATA ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int I2C_FUNC_SMBUS_I2C_BLOCK ;
 scalar_t__ i2c_check_functionality (int ,int) ;

__attribute__((used)) static u8 cyapa_check_adapter_functionality(struct i2c_client *client)
{
 u8 ret = CYAPA_ADAPTER_FUNC_NONE;

 if (i2c_check_functionality(client->adapter, I2C_FUNC_I2C))
  ret |= CYAPA_ADAPTER_FUNC_I2C;
 if (i2c_check_functionality(client->adapter, I2C_FUNC_SMBUS_BYTE_DATA |
         I2C_FUNC_SMBUS_BLOCK_DATA |
         I2C_FUNC_SMBUS_I2C_BLOCK))
  ret |= CYAPA_ADAPTER_FUNC_SMBUS;
 return ret;
}
