
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct i2c_client {int dummy; } ;


 int ENODATA ;
 int LTC3815_MFR_IIN_PEAK ;
 int LTC3815_MFR_IOUT_PEAK ;
 int LTC3815_MFR_TEMP_PEAK ;
 int LTC3815_MFR_VIN_PEAK ;
 int LTC3815_MFR_VOUT_PEAK ;





 int pmbus_write_word_data (struct i2c_client*,int,int ,int ) ;

__attribute__((used)) static int ltc3815_write_word_data(struct i2c_client *client, int page,
       int reg, u16 word)
{
 int ret;

 switch (reg) {
 case 132:
  ret = pmbus_write_word_data(client, page,
         LTC3815_MFR_IIN_PEAK, 0);
  break;
 case 131:
  ret = pmbus_write_word_data(client, page,
         LTC3815_MFR_IOUT_PEAK, 0);
  break;
 case 128:
  ret = pmbus_write_word_data(client, page,
         LTC3815_MFR_VOUT_PEAK, 0);
  break;
 case 129:
  ret = pmbus_write_word_data(client, page,
         LTC3815_MFR_VIN_PEAK, 0);
  break;
 case 130:
  ret = pmbus_write_word_data(client, page,
         LTC3815_MFR_TEMP_PEAK, 0);
  break;
 default:
  ret = -ENODATA;
  break;
 }
 return ret;
}
