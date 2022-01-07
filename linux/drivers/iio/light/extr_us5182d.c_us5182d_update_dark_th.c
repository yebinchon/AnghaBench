
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct us5182d_data {int client; int * us5182d_dark_ths; } ;
typedef int __be16 ;


 scalar_t__ US5182D_REG_UDARK_TH ;
 int cpu_to_be16 (int ) ;
 int i2c_smbus_write_byte_data (int ,scalar_t__,int ) ;

__attribute__((used)) static int us5182d_update_dark_th(struct us5182d_data *data, int index)
{
 __be16 dark_th = cpu_to_be16(data->us5182d_dark_ths[index]);
 int ret;

 ret = i2c_smbus_write_byte_data(data->client, US5182D_REG_UDARK_TH,
     ((u8 *)&dark_th)[0]);
 if (ret < 0)
  return ret;

 return i2c_smbus_write_byte_data(data->client, US5182D_REG_UDARK_TH + 1,
     ((u8 *)&dark_th)[1]);
}
