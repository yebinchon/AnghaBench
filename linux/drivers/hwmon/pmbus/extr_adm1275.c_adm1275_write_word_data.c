
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pmbus_driver_info {int dummy; } ;
struct i2c_client {int dummy; } ;
struct adm1275_data {int have_power_sampling; int have_pin_min; int have_iout_min; } ;


 int ADM1275_IOUT_WARN2_LIMIT ;
 int ADM1275_PEAK_IOUT ;
 int ADM1275_PEAK_VIN ;
 int ADM1275_PEAK_VOUT ;
 int ADM1275_SAMPLES_AVG_MAX ;
 int ADM1276_PEAK_PIN ;
 int ADM1278_PEAK_TEMP ;
 int ADM1293_IOUT_MIN ;
 int ADM1293_PIN_MIN ;
 int ENODATA ;
 int ENXIO ;
 int adm1275_write_pmon_config (struct adm1275_data const*,struct i2c_client*,int,int ) ;
 int clamp_val (int ,int,int ) ;
 int ilog2 (int ) ;
 struct pmbus_driver_info* pmbus_get_driver_info (struct i2c_client*) ;
 int pmbus_write_word_data (struct i2c_client*,int ,int ,int ) ;
 struct adm1275_data* to_adm1275_data (struct pmbus_driver_info const*) ;

__attribute__((used)) static int adm1275_write_word_data(struct i2c_client *client, int page, int reg,
       u16 word)
{
 const struct pmbus_driver_info *info = pmbus_get_driver_info(client);
 const struct adm1275_data *data = to_adm1275_data(info);
 int ret;

 if (page > 0)
  return -ENXIO;

 switch (reg) {
 case 136:
 case 137:
  ret = pmbus_write_word_data(client, 0, ADM1275_IOUT_WARN2_LIMIT,
         word);
  break;
 case 132:
  ret = pmbus_write_word_data(client, 0, ADM1275_PEAK_IOUT, 0);
  if (!ret && data->have_iout_min)
   ret = pmbus_write_word_data(client, 0,
          ADM1293_IOUT_MIN, 0);
  break;
 case 128:
  ret = pmbus_write_word_data(client, 0, ADM1275_PEAK_VOUT, 0);
  break;
 case 129:
  ret = pmbus_write_word_data(client, 0, ADM1275_PEAK_VIN, 0);
  break;
 case 131:
  ret = pmbus_write_word_data(client, 0, ADM1276_PEAK_PIN, 0);
  if (!ret && data->have_pin_min)
   ret = pmbus_write_word_data(client, 0,
          ADM1293_PIN_MIN, 0);
  break;
 case 130:
  ret = pmbus_write_word_data(client, 0, ADM1278_PEAK_TEMP, 0);
  break;
 case 133:
  if (!data->have_power_sampling)
   return -ENXIO;
  word = clamp_val(word, 1, ADM1275_SAMPLES_AVG_MAX);
  ret = adm1275_write_pmon_config(data, client, 1,
      ilog2(word));
  break;
 case 134:
 case 135:
  word = clamp_val(word, 1, ADM1275_SAMPLES_AVG_MAX);
  ret = adm1275_write_pmon_config(data, client, 0,
      ilog2(word));
  break;
 default:
  ret = -ENODATA;
  break;
 }
 return ret;
}
