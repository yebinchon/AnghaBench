
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int ENODATA ;
 int LTC3815_MFR_IIN_PEAK ;
 int LTC3815_MFR_IOUT_PEAK ;
 int LTC3815_MFR_TEMP_PEAK ;
 int LTC3815_MFR_VIN_PEAK ;
 int LTC3815_MFR_VOUT_PEAK ;
 int pmbus_read_word_data (struct i2c_client*,int,int ) ;

__attribute__((used)) static int ltc3815_read_word_data(struct i2c_client *client, int page, int reg)
{
 int ret;

 switch (reg) {
 case 134:
  ret = pmbus_read_word_data(client, page, LTC3815_MFR_VIN_PEAK);
  break;
 case 133:
  ret = pmbus_read_word_data(client, page, LTC3815_MFR_VOUT_PEAK);
  break;
 case 135:
  ret = pmbus_read_word_data(client, page, LTC3815_MFR_TEMP_PEAK);
  break;
 case 136:
  ret = pmbus_read_word_data(client, page, LTC3815_MFR_IOUT_PEAK);
  break;
 case 137:
  ret = pmbus_read_word_data(client, page, LTC3815_MFR_IIN_PEAK);
  break;
 case 128:
 case 129:
 case 130:
 case 131:
 case 132:
  ret = 0;
  break;
 default:
  ret = -ENODATA;
  break;
 }
 return ret;
}
