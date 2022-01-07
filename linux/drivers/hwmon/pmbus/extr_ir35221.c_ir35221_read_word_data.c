
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int ENODATA ;
 int IR35221_MFR_IOUT_PEAK ;
 int IR35221_MFR_IOUT_VALLEY ;
 int IR35221_MFR_TEMP_PEAK ;
 int IR35221_MFR_TEMP_VALLEY ;
 int IR35221_MFR_VIN_PEAK ;
 int IR35221_MFR_VIN_VALLEY ;
 int IR35221_MFR_VOUT_PEAK ;
 int IR35221_MFR_VOUT_VALLEY ;
 int pmbus_read_word_data (struct i2c_client*,int,int ) ;

__attribute__((used)) static int ir35221_read_word_data(struct i2c_client *client, int page, int reg)
{
 int ret;

 switch (reg) {
 case 131:
  ret = pmbus_read_word_data(client, page, IR35221_MFR_VIN_PEAK);
  break;
 case 129:
  ret = pmbus_read_word_data(client, page, IR35221_MFR_VOUT_PEAK);
  break;
 case 135:
  ret = pmbus_read_word_data(client, page, IR35221_MFR_IOUT_PEAK);
  break;
 case 133:
  ret = pmbus_read_word_data(client, page, IR35221_MFR_TEMP_PEAK);
  break;
 case 130:
  ret = pmbus_read_word_data(client, page,
        IR35221_MFR_VIN_VALLEY);
  break;
 case 128:
  ret = pmbus_read_word_data(client, page,
        IR35221_MFR_VOUT_VALLEY);
  break;
 case 134:
  ret = pmbus_read_word_data(client, page,
        IR35221_MFR_IOUT_VALLEY);
  break;
 case 132:
  ret = pmbus_read_word_data(client, page,
        IR35221_MFR_TEMP_VALLEY);
  break;
 default:
  ret = -ENODATA;
  break;
 }

 return ret;
}
