
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
typedef int u8 ;
typedef int u16 ;
struct i2c_client {int dummy; } ;


 int iqs5xx_write_burst (struct i2c_client*,int ,int *,int) ;

__attribute__((used)) static int iqs5xx_write_byte(struct i2c_client *client, u16 reg, u8 val)
{
 return iqs5xx_write_burst(client, reg, &val, sizeof(val));
}
