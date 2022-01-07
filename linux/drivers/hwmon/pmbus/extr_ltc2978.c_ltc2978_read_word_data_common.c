
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmbus_driver_info {int dummy; } ;
struct ltc2978_data {int* vout_max; int * temp_max; int vin_max; } ;
struct i2c_client {int dummy; } ;


 int ENODATA ;
 int LTC2978_MFR_TEMPERATURE_PEAK ;
 int LTC2978_MFR_VIN_PEAK ;
 int LTC2978_MFR_VOUT_PEAK ;






 int ltc_get_max (struct ltc2978_data*,struct i2c_client*,int,int ,int *) ;
 int ltc_read_word_data (struct i2c_client*,int,int ) ;
 int ltc_wait_ready (struct i2c_client*) ;
 struct pmbus_driver_info* pmbus_get_driver_info (struct i2c_client*) ;
 struct ltc2978_data* to_ltc2978_data (struct pmbus_driver_info const*) ;

__attribute__((used)) static int ltc2978_read_word_data_common(struct i2c_client *client, int page,
      int reg)
{
 const struct pmbus_driver_info *info = pmbus_get_driver_info(client);
 struct ltc2978_data *data = to_ltc2978_data(info);
 int ret;

 switch (reg) {
 case 132:
  ret = ltc_get_max(data, client, page, LTC2978_MFR_VIN_PEAK,
      &data->vin_max);
  break;
 case 131:
  ret = ltc_read_word_data(client, page, LTC2978_MFR_VOUT_PEAK);
  if (ret >= 0) {




   if (ret > data->vout_max[page])
    data->vout_max[page] = ret;
   ret = data->vout_max[page];
  }
  break;
 case 133:
  ret = ltc_get_max(data, client, page,
      LTC2978_MFR_TEMPERATURE_PEAK,
      &data->temp_max[page]);
  break;
 case 128:
 case 129:
 case 130:
  ret = 0;
  break;
 default:
  ret = ltc_wait_ready(client);
  if (ret < 0)
   return ret;
  ret = -ENODATA;
  break;
 }
 return ret;
}
