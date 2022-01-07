
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct i2c_client {int dummy; } ;


 int ENODATA ;
 int MAX16064_MFR_TEMPERATURE_PEAK ;
 int MAX16064_MFR_VOUT_PEAK ;


 int pmbus_write_word_data (struct i2c_client*,int,int ,int) ;

__attribute__((used)) static int max16064_write_word_data(struct i2c_client *client, int page,
        int reg, u16 word)
{
 int ret;

 switch (reg) {
 case 128:
  ret = pmbus_write_word_data(client, page,
         MAX16064_MFR_VOUT_PEAK, 0);
  break;
 case 129:
  ret = pmbus_write_word_data(client, page,
         MAX16064_MFR_TEMPERATURE_PEAK,
         0xffff);
  break;
 default:
  ret = -ENODATA;
  break;
 }
 return ret;
}
