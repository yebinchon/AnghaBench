
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmbus_driver_info {int dummy; } ;
struct i2c_client {int dummy; } ;
struct adm1275_data {int have_power_sampling; int have_temp_max; int have_pin_max; int have_pin_min; int have_iout_min; int have_vout; int have_oc_fault; int have_uc_fault; } ;


 int ADM1075_READ_VAUX ;
 int ADM1075_VAUX_OV_WARN_LIMIT ;
 int ADM1075_VAUX_UV_WARN_LIMIT ;
 int ADM1275_IOUT_WARN2_LIMIT ;
 int ADM1275_PEAK_IOUT ;
 int ADM1275_PEAK_VIN ;
 int ADM1275_PEAK_VOUT ;
 int ADM1276_PEAK_PIN ;
 int ADM1278_PEAK_TEMP ;
 int ADM1293_IOUT_MIN ;
 int ADM1293_PIN_MIN ;
 int BIT (int) ;
 int ENODATA ;
 int ENXIO ;
 int adm1275_read_pmon_config (struct adm1275_data const*,struct i2c_client*,int) ;
 struct pmbus_driver_info* pmbus_get_driver_info (struct i2c_client*) ;
 int pmbus_read_word_data (struct i2c_client*,int ,int ) ;
 struct adm1275_data* to_adm1275_data (struct pmbus_driver_info const*) ;

__attribute__((used)) static int adm1275_read_word_data(struct i2c_client *client, int page, int reg)
{
 const struct pmbus_driver_info *info = pmbus_get_driver_info(client);
 const struct adm1275_data *data = to_adm1275_data(info);
 int ret = 0;

 if (page > 0)
  return -ENXIO;

 switch (reg) {
 case 146:
  if (!data->have_uc_fault)
   return -ENXIO;
  ret = pmbus_read_word_data(client, 0, ADM1275_IOUT_WARN2_LIMIT);
  break;
 case 147:
  if (!data->have_oc_fault)
   return -ENXIO;
  ret = pmbus_read_word_data(client, 0, ADM1275_IOUT_WARN2_LIMIT);
  break;
 case 129:
  if (data->have_vout)
   return -ENODATA;
  ret = pmbus_read_word_data(client, 0,
        ADM1075_VAUX_OV_WARN_LIMIT);
  break;
 case 128:
  if (data->have_vout)
   return -ENODATA;
  ret = pmbus_read_word_data(client, 0,
        ADM1075_VAUX_UV_WARN_LIMIT);
  break;
 case 145:
  if (data->have_vout)
   return -ENODATA;
  ret = pmbus_read_word_data(client, 0, ADM1075_READ_VAUX);
  break;
 case 140:
  if (!data->have_iout_min)
   return -ENXIO;
  ret = pmbus_read_word_data(client, 0, ADM1293_IOUT_MIN);
  break;
 case 141:
  ret = pmbus_read_word_data(client, 0, ADM1275_PEAK_IOUT);
  break;
 case 135:
  ret = pmbus_read_word_data(client, 0, ADM1275_PEAK_VOUT);
  break;
 case 136:
  ret = pmbus_read_word_data(client, 0, ADM1275_PEAK_VIN);
  break;
 case 138:
  if (!data->have_pin_min)
   return -ENXIO;
  ret = pmbus_read_word_data(client, 0, ADM1293_PIN_MIN);
  break;
 case 139:
  if (!data->have_pin_max)
   return -ENXIO;
  ret = pmbus_read_word_data(client, 0, ADM1276_PEAK_PIN);
  break;
 case 137:
  if (!data->have_temp_max)
   return -ENXIO;
  ret = pmbus_read_word_data(client, 0, ADM1278_PEAK_TEMP);
  break;
 case 134:
 case 130:
 case 131:
  break;
 case 133:
  if (!data->have_pin_max)
   return -ENXIO;
  break;
 case 132:
  if (!data->have_temp_max)
   return -ENXIO;
  break;
 case 142:
  if (!data->have_power_sampling)
   return -ENXIO;
  ret = adm1275_read_pmon_config(data, client, 1);
  if (ret < 0)
   break;
  ret = BIT(ret);
  break;
 case 143:
 case 144:
  ret = adm1275_read_pmon_config(data, client, 0);
  if (ret < 0)
   break;
  ret = BIT(ret);
  break;
 default:
  ret = -ENODATA;
  break;
 }
 return ret;
}
