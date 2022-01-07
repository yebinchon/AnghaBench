
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int ENODATA ;
 int ENXIO ;
 int MAX8688_MFR_IOUT_PEAK ;
 int MAX8688_MFR_TEMPERATURE_PEAK ;
 int MAX8688_MFR_VOUT_PEAK ;






 int pmbus_read_word_data (struct i2c_client*,int ,int ) ;

__attribute__((used)) static int max8688_read_word_data(struct i2c_client *client, int page, int reg)
{
 int ret;

 if (page > 0)
  return -ENXIO;

 switch (reg) {
 case 131:
  ret = pmbus_read_word_data(client, 0, MAX8688_MFR_VOUT_PEAK);
  break;
 case 133:
  ret = pmbus_read_word_data(client, 0, MAX8688_MFR_IOUT_PEAK);
  break;
 case 132:
  ret = pmbus_read_word_data(client, 0,
        MAX8688_MFR_TEMPERATURE_PEAK);
  break;
 case 128:
 case 130:
 case 129:
  ret = 0;
  break;
 default:
  ret = -ENODATA;
  break;
 }
 return ret;
}
