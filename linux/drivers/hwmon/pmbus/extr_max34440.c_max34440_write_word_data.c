
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pmbus_driver_info {int dummy; } ;
struct max34440_data {int id; } ;
struct i2c_client {int dummy; } ;


 int ENODATA ;
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
 struct pmbus_driver_info* pmbus_get_driver_info (struct i2c_client*) ;
 int pmbus_write_word_data (struct i2c_client*,int,int ,int) ;
 struct max34440_data* to_max34440_data (struct pmbus_driver_info const*) ;

__attribute__((used)) static int max34440_write_word_data(struct i2c_client *client, int page,
        int reg, u16 word)
{
 const struct pmbus_driver_info *info = pmbus_get_driver_info(client);
 const struct max34440_data *data = to_max34440_data(info);
 int ret;

 switch (reg) {
 case 130:
  ret = pmbus_write_word_data(client, page,
         MAX34446_MFR_POUT_PEAK, 0);
  if (ret)
   break;
  ret = pmbus_write_word_data(client, page,
         MAX34446_MFR_POUT_AVG, 0);
  break;
 case 128:
  ret = pmbus_write_word_data(client, page,
         MAX34440_MFR_VOUT_MIN, 0x7fff);
  if (ret)
   break;
  ret = pmbus_write_word_data(client, page,
         MAX34440_MFR_VOUT_PEAK, 0);
  break;
 case 131:
  ret = pmbus_write_word_data(client, page,
         MAX34440_MFR_IOUT_PEAK, 0);
  if (!ret && (data->id == max34446 || data->id == max34451))
   ret = pmbus_write_word_data(client, page,
     MAX34446_MFR_IOUT_AVG, 0);

  break;
 case 129:
  ret = pmbus_write_word_data(client, page,
         MAX34440_MFR_TEMPERATURE_PEAK,
         0x8000);
  if (!ret && data->id == max34446)
   ret = pmbus_write_word_data(client, page,
     MAX34446_MFR_TEMPERATURE_AVG, 0);
  break;
 default:
  ret = -ENODATA;
  break;
 }
 return ret;
}
