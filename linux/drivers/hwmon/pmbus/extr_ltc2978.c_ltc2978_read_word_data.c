
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmbus_driver_info {int dummy; } ;
struct ltc2978_data {int* vout_max; int* vout_min; int * temp_min; int vin_min; } ;
struct i2c_client {int dummy; } ;


 int ENXIO ;
 int LTC2978_MFR_TEMPERATURE_MIN ;
 int LTC2978_MFR_VIN_MIN ;
 int LTC2978_MFR_VOUT_MIN ;







 int ltc2978_read_word_data_common (struct i2c_client*,int,int) ;
 int ltc_get_min (struct ltc2978_data*,struct i2c_client*,int,int ,int *) ;
 int ltc_read_word_data (struct i2c_client*,int,int ) ;
 struct pmbus_driver_info* pmbus_get_driver_info (struct i2c_client*) ;
 struct ltc2978_data* to_ltc2978_data (struct pmbus_driver_info const*) ;

__attribute__((used)) static int ltc2978_read_word_data(struct i2c_client *client, int page, int reg)
{
 const struct pmbus_driver_info *info = pmbus_get_driver_info(client);
 struct ltc2978_data *data = to_ltc2978_data(info);
 int ret;

 switch (reg) {
 case 131:
  ret = ltc_get_min(data, client, page, LTC2978_MFR_VIN_MIN,
      &data->vin_min);
  break;
 case 130:
  ret = ltc_read_word_data(client, page, LTC2978_MFR_VOUT_MIN);
  if (ret >= 0) {






   if (data->vout_max[page] && ret > data->vout_max[page])
    ret = data->vout_max[page];
   if (ret < data->vout_min[page])
    data->vout_min[page] = ret;
   ret = data->vout_min[page];
  }
  break;
 case 132:
  ret = ltc_get_min(data, client, page,
      LTC2978_MFR_TEMPERATURE_MIN,
      &data->temp_min[page]);
  break;
 case 134:
 case 129:
 case 133:
 case 128:
  ret = -ENXIO;
  break;
 default:
  ret = ltc2978_read_word_data_common(client, page, reg);
  break;
 }
 return ret;
}
