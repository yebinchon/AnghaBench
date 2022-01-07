
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct si1145_data {int client; } ;


 int SI1145_REG_PARAM_WR ;
 int i2c_smbus_write_byte_data (int ,int ,int) ;
 int si1145_command (struct si1145_data*,int) ;

__attribute__((used)) static int si1145_param_update(struct si1145_data *data, u8 op, u8 param,
          u8 value)
{
 int ret;

 ret = i2c_smbus_write_byte_data(data->client,
  SI1145_REG_PARAM_WR, value);
 if (ret < 0)
  return ret;

 return si1145_command(data, op | (param & 0x1F));
}
