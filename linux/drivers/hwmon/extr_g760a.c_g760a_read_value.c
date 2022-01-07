
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
typedef enum g760a_regs { ____Placeholder_g760a_regs } g760a_regs ;


 int i2c_smbus_read_byte_data (struct i2c_client*,int) ;

__attribute__((used)) static int g760a_read_value(struct i2c_client *client, enum g760a_regs reg)
{
 return i2c_smbus_read_byte_data(client, reg);
}
