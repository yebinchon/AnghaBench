
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucd9000_data {int** fan_data; } ;
struct i2c_client {int dummy; } ;


 int PB_FAN_2_INSTALLED ;
 int pmbus_get_driver_info (struct i2c_client*) ;
 struct ucd9000_data* to_ucd9000_data (int ) ;

__attribute__((used)) static int ucd9000_get_fan_config(struct i2c_client *client, int fan)
{
 int fan_config = 0;
 struct ucd9000_data *data
   = to_ucd9000_data(pmbus_get_driver_info(client));

 if (data->fan_data[fan][3] & 1)
  fan_config |= PB_FAN_2_INSTALLED;


 fan_config |= (data->fan_data[fan][3] & 0x06) >> 1;

 return fan_config;
}
