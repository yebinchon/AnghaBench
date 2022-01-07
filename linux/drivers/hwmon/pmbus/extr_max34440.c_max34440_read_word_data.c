
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmbus_driver_info {int dummy; } ;
struct max34440_data {int id; } ;
struct i2c_client {int dummy; } ;


 int ENODATA ;
 int ENXIO ;
 int MAX34440_MFR_IOUT_PEAK ;
 int MAX34440_MFR_TEMPERATURE_PEAK ;
 int MAX34440_MFR_VOUT_MIN ;
 int MAX34440_MFR_VOUT_PEAK ;
 int MAX34446_MFR_IOUT_AVG ;
 int MAX34446_MFR_POUT_AVG ;
 int MAX34446_MFR_POUT_PEAK ;
 int MAX34446_MFR_TEMPERATURE_AVG ;
 int max34446 ;
 int max34451 ;
 int max34460 ;
 int max34461 ;
 struct pmbus_driver_info* pmbus_get_driver_info (struct i2c_client*) ;
 int pmbus_read_word_data (struct i2c_client*,int,int ) ;
 struct max34440_data* to_max34440_data (struct pmbus_driver_info const*) ;

__attribute__((used)) static int max34440_read_word_data(struct i2c_client *client, int page, int reg)
{
 int ret;
 const struct pmbus_driver_info *info = pmbus_get_driver_info(client);
 const struct max34440_data *data = to_max34440_data(info);

 switch (reg) {
 case 132:
  ret = pmbus_read_word_data(client, page,
        MAX34440_MFR_VOUT_MIN);
  break;
 case 133:
  ret = pmbus_read_word_data(client, page,
        MAX34440_MFR_VOUT_PEAK);
  break;
 case 139:
  if (data->id != max34446 && data->id != max34451)
   return -ENXIO;
  ret = pmbus_read_word_data(client, page,
        MAX34446_MFR_IOUT_AVG);
  break;
 case 138:
  ret = pmbus_read_word_data(client, page,
        MAX34440_MFR_IOUT_PEAK);
  break;
 case 137:
  if (data->id != max34446)
   return -ENXIO;
  ret = pmbus_read_word_data(client, page,
        MAX34446_MFR_POUT_AVG);
  break;
 case 136:
  if (data->id != max34446)
   return -ENXIO;
  ret = pmbus_read_word_data(client, page,
        MAX34446_MFR_POUT_PEAK);
  break;
 case 135:
  if (data->id != max34446 && data->id != max34460 &&
      data->id != max34461)
   return -ENXIO;
  ret = pmbus_read_word_data(client, page,
        MAX34446_MFR_TEMPERATURE_AVG);
  break;
 case 134:
  ret = pmbus_read_word_data(client, page,
        MAX34440_MFR_TEMPERATURE_PEAK);
  break;
 case 130:
  if (data->id != max34446)
   return -ENXIO;
  ret = 0;
  break;
 case 128:
 case 131:
 case 129:
  ret = 0;
  break;
 default:
  ret = -ENODATA;
  break;
 }
 return ret;
}
