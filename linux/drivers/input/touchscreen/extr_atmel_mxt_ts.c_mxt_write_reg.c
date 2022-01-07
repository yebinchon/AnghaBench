
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct i2c_client {int dummy; } ;


 int __mxt_write_reg (struct i2c_client*,int ,int,int *) ;

__attribute__((used)) static int mxt_write_reg(struct i2c_client *client, u16 reg, u8 val)
{
 return __mxt_write_reg(client, reg, 1, &val);
}
