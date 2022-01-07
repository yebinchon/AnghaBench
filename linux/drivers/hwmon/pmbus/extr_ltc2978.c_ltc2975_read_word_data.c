
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmbus_driver_info {int dummy; } ;
struct ltc2978_data {int pin_min; int pin_max; int iin_min; int iin_max; } ;
struct i2c_client {int dummy; } ;


 int LTC2975_MFR_IIN_MIN ;
 int LTC2975_MFR_IIN_PEAK ;
 int LTC2975_MFR_PIN_MIN ;
 int LTC2975_MFR_PIN_PEAK ;






 int ltc2978_read_word_data (struct i2c_client*,int,int) ;
 int ltc_get_max (struct ltc2978_data*,struct i2c_client*,int,int ,int *) ;
 int ltc_get_min (struct ltc2978_data*,struct i2c_client*,int,int ,int *) ;
 struct pmbus_driver_info* pmbus_get_driver_info (struct i2c_client*) ;
 struct ltc2978_data* to_ltc2978_data (struct pmbus_driver_info const*) ;

__attribute__((used)) static int ltc2975_read_word_data(struct i2c_client *client, int page, int reg)
{
 const struct pmbus_driver_info *info = pmbus_get_driver_info(client);
 struct ltc2978_data *data = to_ltc2978_data(info);
 int ret;

 switch (reg) {
 case 133:
  ret = ltc_get_max(data, client, page, LTC2975_MFR_IIN_PEAK,
      &data->iin_max);
  break;
 case 132:
  ret = ltc_get_min(data, client, page, LTC2975_MFR_IIN_MIN,
      &data->iin_min);
  break;
 case 131:
  ret = ltc_get_max(data, client, page, LTC2975_MFR_PIN_PEAK,
      &data->pin_max);
  break;
 case 130:
  ret = ltc_get_min(data, client, page, LTC2975_MFR_PIN_MIN,
      &data->pin_min);
  break;
 case 129:
 case 128:
  ret = 0;
  break;
 default:
  ret = ltc2978_read_word_data(client, page, reg);
  break;
 }
 return ret;
}
