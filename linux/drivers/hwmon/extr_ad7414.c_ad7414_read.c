
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct i2c_client {int dummy; } ;


 scalar_t__ AD7414_REG_TEMP ;
 int i2c_smbus_read_byte_data (struct i2c_client*,scalar_t__) ;
 int i2c_smbus_read_word_swapped (struct i2c_client*,scalar_t__) ;

__attribute__((used)) static inline int ad7414_read(struct i2c_client *client, u8 reg)
{
 if (reg == AD7414_REG_TEMP)
  return i2c_smbus_read_word_swapped(client, reg);
 else
  return i2c_smbus_read_byte_data(client, reg);
}
