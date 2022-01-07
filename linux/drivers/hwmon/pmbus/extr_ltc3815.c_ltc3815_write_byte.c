
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dummy; } ;


 int ENODATA ;

 int PMBUS_STATUS_WORD ;
 int pmbus_read_word_data (struct i2c_client*,int ,int ) ;
 int pmbus_write_word_data (struct i2c_client*,int ,int ,int) ;

__attribute__((used)) static int ltc3815_write_byte(struct i2c_client *client, int page, u8 reg)
{
 int ret;

 switch (reg) {
 case 128:




  ret = pmbus_read_word_data(client, 0, PMBUS_STATUS_WORD);
  if (ret > 0) {
   pmbus_write_word_data(client, 0, PMBUS_STATUS_WORD,
           ret);
   ret = 0;
  }
  break;
 default:
  ret = -ENODATA;
  break;
 }
 return ret;
}
