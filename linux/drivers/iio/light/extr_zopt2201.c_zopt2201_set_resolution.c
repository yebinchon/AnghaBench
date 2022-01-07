
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct zopt2201_data {int rate; int res; int client; } ;


 int ZOPT2201_LS_MEAS_RATE ;
 int ZOPT2201_MEAS_RES_SHIFT ;
 int i2c_smbus_write_byte_data (int ,int ,int) ;

__attribute__((used)) static int zopt2201_set_resolution(struct zopt2201_data *data, u8 res)
{
 int ret;

 ret = i2c_smbus_write_byte_data(data->client, ZOPT2201_LS_MEAS_RATE,
     (res << ZOPT2201_MEAS_RES_SHIFT) |
     data->rate);
 if (ret < 0)
  return ret;

 data->res = res;

 return 0;
}
