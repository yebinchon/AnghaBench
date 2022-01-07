
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmbus_driver_info {int dummy; } ;
struct ltc2978_data {int temp2_max; int * iout_max; } ;
struct i2c_client {int dummy; } ;


 int ENXIO ;
 int LTC3880_MFR_IOUT_PEAK ;
 int LTC3880_MFR_TEMPERATURE2_PEAK ;







 int ltc2978_read_word_data_common (struct i2c_client*,int,int) ;
 int ltc_get_max (struct ltc2978_data*,struct i2c_client*,int,int ,int *) ;
 struct pmbus_driver_info* pmbus_get_driver_info (struct i2c_client*) ;
 struct ltc2978_data* to_ltc2978_data (struct pmbus_driver_info const*) ;

__attribute__((used)) static int ltc3880_read_word_data(struct i2c_client *client, int page, int reg)
{
 const struct pmbus_driver_info *info = pmbus_get_driver_info(client);
 struct ltc2978_data *data = to_ltc2978_data(info);
 int ret;

 switch (reg) {
 case 134:
  ret = ltc_get_max(data, client, page, LTC3880_MFR_IOUT_PEAK,
      &data->iout_max[page]);
  break;
 case 133:
  ret = ltc_get_max(data, client, page,
      LTC3880_MFR_TEMPERATURE2_PEAK,
      &data->temp2_max);
  break;
 case 131:
 case 130:
 case 132:
  ret = -ENXIO;
  break;
 case 129:
 case 128:
  ret = 0;
  break;
 default:
  ret = ltc2978_read_word_data_common(client, page, reg);
  break;
 }
 return ret;
}
