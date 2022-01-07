
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dummy; } ;


 int i2c_smbus_write_byte_data (struct i2c_client*,int ,unsigned int) ;

__attribute__((used)) static inline int
adm1031_write_value(struct i2c_client *client, u8 reg, unsigned int value)
{
 return i2c_smbus_write_byte_data(client, reg, value);
}
