
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bma180_data {int client; } ;


 int ffs (int) ;
 int i2c_smbus_read_byte_data (int ,int) ;
 int i2c_smbus_write_byte_data (int ,int,int) ;

__attribute__((used)) static int bma180_set_bits(struct bma180_data *data, u8 reg, u8 mask, u8 val)
{
 int ret = i2c_smbus_read_byte_data(data->client, reg);
 u8 reg_val = (ret & ~mask) | (val << (ffs(mask) - 1));

 if (ret < 0)
  return ret;

 return i2c_smbus_write_byte_data(data->client, reg, reg_val);
}
