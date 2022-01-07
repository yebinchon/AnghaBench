
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct i2c_client {int dummy; } ;


 int i2c_smbus_read_byte_data (struct i2c_client*,scalar_t__) ;

__attribute__((used)) static inline int adt7462_read_word_data(struct i2c_client *client, u8 reg)
{
 u16 foo;
 foo = i2c_smbus_read_byte_data(client, reg);
 foo |= ((u16)i2c_smbus_read_byte_data(client, reg + 1) << 8);
 return foo;
}
