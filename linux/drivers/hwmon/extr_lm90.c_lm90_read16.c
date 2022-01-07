
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dummy; } ;


 int lm90_read_reg (struct i2c_client*,int ) ;

__attribute__((used)) static int lm90_read16(struct i2c_client *client, u8 regh, u8 regl)
{
 int oldh, newh, l;
 oldh = lm90_read_reg(client, regh);
 if (oldh < 0)
  return oldh;
 l = lm90_read_reg(client, regl);
 if (l < 0)
  return l;
 newh = lm90_read_reg(client, regh);
 if (newh < 0)
  return newh;
 if (oldh != newh) {
  l = lm90_read_reg(client, regl);
  if (l < 0)
   return l;
 }
 return (newh << 8) | l;
}
