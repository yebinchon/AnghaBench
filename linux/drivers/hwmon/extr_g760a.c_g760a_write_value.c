
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct i2c_client {int dummy; } ;
typedef enum g760a_regs { ____Placeholder_g760a_regs } g760a_regs ;


 int i2c_smbus_write_byte_data (struct i2c_client*,int,int ) ;

__attribute__((used)) static int g760a_write_value(struct i2c_client *client, enum g760a_regs reg,
        u16 value)
{
 return i2c_smbus_write_byte_data(client, reg, value);
}
