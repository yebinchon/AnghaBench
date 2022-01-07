
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmbus_driver_info {int dummy; } ;
struct ltc2978_data {int iin_max; } ;
struct i2c_client {int dummy; } ;


 int LTC3883_MFR_IIN_PEAK ;


 int ltc3880_read_word_data (struct i2c_client*,int,int) ;
 int ltc_get_max (struct ltc2978_data*,struct i2c_client*,int,int ,int *) ;
 struct pmbus_driver_info* pmbus_get_driver_info (struct i2c_client*) ;
 struct ltc2978_data* to_ltc2978_data (struct pmbus_driver_info const*) ;

__attribute__((used)) static int ltc3883_read_word_data(struct i2c_client *client, int page, int reg)
{
 const struct pmbus_driver_info *info = pmbus_get_driver_info(client);
 struct ltc2978_data *data = to_ltc2978_data(info);
 int ret;

 switch (reg) {
 case 129:
  ret = ltc_get_max(data, client, page, LTC3883_MFR_IIN_PEAK,
      &data->iin_max);
  break;
 case 128:
  ret = 0;
  break;
 default:
  ret = ltc3880_read_word_data(client, page, reg);
  break;
 }
 return ret;
}
