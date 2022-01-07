
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us5182d_data {int client; } ;


 int US5182D_CFG0_ONESHOT_EN ;
 int US5182D_REG_CFG0 ;
 int i2c_smbus_read_byte_data (int ,int ) ;
 int i2c_smbus_write_byte_data (int ,int ,int) ;

__attribute__((used)) static int us5182d_oneshot_en(struct us5182d_data *data)
{
 int ret;

 ret = i2c_smbus_read_byte_data(data->client, US5182D_REG_CFG0);
 if (ret < 0)
  return ret;





 ret = ret | US5182D_CFG0_ONESHOT_EN;

 return i2c_smbus_write_byte_data(data->client, US5182D_REG_CFG0, ret);
}
