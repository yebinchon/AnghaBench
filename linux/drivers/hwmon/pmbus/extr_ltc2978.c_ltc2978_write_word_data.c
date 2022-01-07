
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pmbus_driver_info {int dummy; } ;
struct ltc2978_data {int iin_max; int iin_min; int pin_max; int pin_min; int* iout_max; int* iout_min; int temp2_max; int* vout_min; int vin_min; int vin_max; int* temp_min; int* temp_max; int * vout_max; } ;
struct i2c_client {int dummy; } ;


 int ENODATA ;







 int ltc2978_clear_peaks (struct ltc2978_data*,struct i2c_client*,int) ;
 int ltc_wait_ready (struct i2c_client*) ;
 struct pmbus_driver_info* pmbus_get_driver_info (struct i2c_client*) ;
 struct ltc2978_data* to_ltc2978_data (struct pmbus_driver_info const*) ;

__attribute__((used)) static int ltc2978_write_word_data(struct i2c_client *client, int page,
        int reg, u16 word)
{
 const struct pmbus_driver_info *info = pmbus_get_driver_info(client);
 struct ltc2978_data *data = to_ltc2978_data(info);
 int ret;

 switch (reg) {
 case 134:
  data->iin_max = 0x7c00;
  data->iin_min = 0x7bff;
  ret = ltc2978_clear_peaks(data, client, 0);
  break;
 case 132:
  data->pin_max = 0x7c00;
  data->pin_min = 0x7bff;
  ret = ltc2978_clear_peaks(data, client, 0);
  break;
 case 133:
  data->iout_max[page] = 0x7c00;
  data->iout_min[page] = 0xfbff;
  ret = ltc2978_clear_peaks(data, client, page);
  break;
 case 131:
  data->temp2_max = 0x7c00;
  ret = ltc2978_clear_peaks(data, client, page);
  break;
 case 128:
  data->vout_min[page] = 0xffff;
  data->vout_max[page] = 0;
  ret = ltc2978_clear_peaks(data, client, page);
  break;
 case 129:
  data->vin_min = 0x7bff;
  data->vin_max = 0x7c00;
  ret = ltc2978_clear_peaks(data, client, page);
  break;
 case 130:
  data->temp_min[page] = 0x7bff;
  data->temp_max[page] = 0x7c00;
  ret = ltc2978_clear_peaks(data, client, page);
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
