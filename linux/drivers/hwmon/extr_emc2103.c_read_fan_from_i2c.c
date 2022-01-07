
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct i2c_client {int dummy; } ;


 scalar_t__ read_u8_from_i2c (struct i2c_client*,int,int*) ;

__attribute__((used)) static void read_fan_from_i2c(struct i2c_client *client, u16 *output,
         u8 hi_addr, u8 lo_addr)
{
 u8 high_byte, lo_byte;

 if (read_u8_from_i2c(client, hi_addr, &high_byte) < 0)
  return;

 if (read_u8_from_i2c(client, lo_addr, &lo_byte) < 0)
  return;

 *output = ((u16)high_byte << 5) | (lo_byte >> 3);
}
