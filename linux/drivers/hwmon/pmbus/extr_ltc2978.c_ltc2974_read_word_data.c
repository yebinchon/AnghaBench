
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmbus_driver_info {int dummy; } ;
struct ltc2978_data {int * iout_min; int * iout_max; } ;
struct i2c_client {int dummy; } ;


 int LTC2974_MFR_IOUT_MIN ;
 int LTC2974_MFR_IOUT_PEAK ;



 int ltc2978_read_word_data (struct i2c_client*,int,int) ;
 int ltc_get_max (struct ltc2978_data*,struct i2c_client*,int,int ,int *) ;
 int ltc_get_min (struct ltc2978_data*,struct i2c_client*,int,int ,int *) ;
 struct pmbus_driver_info* pmbus_get_driver_info (struct i2c_client*) ;
 struct ltc2978_data* to_ltc2978_data (struct pmbus_driver_info const*) ;

__attribute__((used)) static int ltc2974_read_word_data(struct i2c_client *client, int page, int reg)
{
 const struct pmbus_driver_info *info = pmbus_get_driver_info(client);
 struct ltc2978_data *data = to_ltc2978_data(info);
 int ret;

 switch (reg) {
 case 130:
  ret = ltc_get_max(data, client, page, LTC2974_MFR_IOUT_PEAK,
      &data->iout_max[page]);
  break;
 case 129:
  ret = ltc_get_min(data, client, page, LTC2974_MFR_IOUT_MIN,
      &data->iout_min[page]);
  break;
 case 128:
  ret = 0;
  break;
 default:
  ret = ltc2978_read_word_data(client, page, reg);
  break;
 }
 return ret;
}
