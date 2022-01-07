
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct us5182d_data {int opmode; int client; } ;


 int US5182D_OPMODE_MASK ;
 int US5182D_OPMODE_SHIFT ;
 int US5182D_OPSTORE_SLEEP_TIME ;
 int US5182D_REG_CFG0 ;
 int US5182D_REG_MODE_STORE ;
 int US5182D_STORE_MODE ;
 int i2c_smbus_read_byte_data (int ,int ) ;
 int i2c_smbus_write_byte_data (int ,int ,int) ;
 int msleep (int ) ;

__attribute__((used)) static int us5182d_set_opmode(struct us5182d_data *data, u8 mode)
{
 int ret;

 if (mode == data->opmode)
  return 0;

 ret = i2c_smbus_read_byte_data(data->client, US5182D_REG_CFG0);
 if (ret < 0)
  return ret;


 ret = ret & ~US5182D_OPMODE_MASK;
 ret = ret | (mode << US5182D_OPMODE_SHIFT);






 ret = i2c_smbus_write_byte_data(data->client, US5182D_REG_CFG0, ret);
 if (ret < 0)
  return ret;

 ret = i2c_smbus_write_byte_data(data->client, US5182D_REG_MODE_STORE,
     US5182D_STORE_MODE);
 if (ret < 0)
  return ret;

 data->opmode = mode;
 msleep(US5182D_OPSTORE_SLEEP_TIME);

 return 0;
}
