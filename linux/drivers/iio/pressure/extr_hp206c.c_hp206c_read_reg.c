
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dummy; } ;


 int HP206C_CMD_READ_REG ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int) ;

__attribute__((used)) static inline int hp206c_read_reg(struct i2c_client *client, u8 reg)
{
 return i2c_smbus_read_byte_data(client, HP206C_CMD_READ_REG | reg);
}
