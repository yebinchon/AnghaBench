
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us5182d_data {int client; } ;


 int US5182D_AGAIN_MASK ;
 int US5182D_REG_CFG1 ;
 int i2c_smbus_read_byte_data (int ,int ) ;
 int i2c_smbus_write_byte_data (int ,int ,int) ;
 int us5182d_update_dark_th (struct us5182d_data*,int) ;

__attribute__((used)) static int us5182d_apply_scale(struct us5182d_data *data, int index)
{
 int ret;

 ret = i2c_smbus_read_byte_data(data->client, US5182D_REG_CFG1);
 if (ret < 0)
  return ret;

 ret = ret & (~US5182D_AGAIN_MASK);
 ret |= index;

 ret = i2c_smbus_write_byte_data(data->client, US5182D_REG_CFG1, ret);
 if (ret < 0)
  return ret;

 return us5182d_update_dark_th(data, index);
}
