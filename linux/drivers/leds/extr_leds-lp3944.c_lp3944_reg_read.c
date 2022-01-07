
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dummy; } ;


 int i2c_smbus_read_byte_data (struct i2c_client*,int) ;

__attribute__((used)) static int lp3944_reg_read(struct i2c_client *client, u8 reg, u8 *value)
{
 int tmp;

 tmp = i2c_smbus_read_byte_data(client, reg);
 if (tmp < 0)
  return tmp;

 *value = tmp;

 return 0;
}
