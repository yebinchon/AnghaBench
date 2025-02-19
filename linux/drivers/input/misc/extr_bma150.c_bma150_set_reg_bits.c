
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dummy; } ;


 int bma150_write_byte (struct i2c_client*,int,int) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int) ;

__attribute__((used)) static int bma150_set_reg_bits(struct i2c_client *client,
     int val, int shift, u8 mask, u8 reg)
{
 int data;

 data = i2c_smbus_read_byte_data(client, reg);
 if (data < 0)
  return data;

 data = (data & ~mask) | ((val << shift) & mask);
 return bma150_write_byte(client, reg, data);
}
