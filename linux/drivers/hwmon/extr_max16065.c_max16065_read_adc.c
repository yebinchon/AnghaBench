
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int i2c_smbus_read_word_swapped (struct i2c_client*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int max16065_read_adc(struct i2c_client *client, int reg)
{
 int rv;

 rv = i2c_smbus_read_word_swapped(client, reg);
 if (unlikely(rv < 0))
  return rv;
 return rv >> 6;
}
