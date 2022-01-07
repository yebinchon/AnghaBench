
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int ENODATA ;
 int MAX16064_MFR_TEMPERATURE_PEAK ;
 int MAX16064_MFR_VOUT_PEAK ;




 int pmbus_read_word_data (struct i2c_client*,int,int ) ;

__attribute__((used)) static int max16064_read_word_data(struct i2c_client *client, int page, int reg)
{
 int ret;

 switch (reg) {
 case 130:
  ret = pmbus_read_word_data(client, page,
        MAX16064_MFR_VOUT_PEAK);
  break;
 case 131:
  ret = pmbus_read_word_data(client, page,
        MAX16064_MFR_TEMPERATURE_PEAK);
  break;
 case 128:
 case 129:
  ret = 0;
  break;
 default:
  ret = -ENODATA;
  break;
 }
 return ret;
}
