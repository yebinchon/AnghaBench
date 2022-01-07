
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value ;
typedef int u8 ;
typedef int u16 ;
struct i2c_client {int dummy; } ;


 int goodix_i2c_write (struct i2c_client*,int ,int *,int) ;

__attribute__((used)) static int goodix_i2c_write_u8(struct i2c_client *client, u16 reg, u8 value)
{
 return goodix_i2c_write(client, reg, &value, sizeof(value));
}
