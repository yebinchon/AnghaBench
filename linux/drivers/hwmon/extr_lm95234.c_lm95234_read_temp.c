
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct i2c_client {int dummy; } ;
typedef int s16 ;


 int LM95234_REG_TEMPH (int) ;
 int LM95234_REG_TEMPL (int) ;
 int LM95234_REG_UTEMPH (int) ;
 int LM95234_REG_UTEMPL (int) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;

__attribute__((used)) static int lm95234_read_temp(struct i2c_client *client, int index, int *t)
{
 int val;
 u16 temp = 0;

 if (index) {
  val = i2c_smbus_read_byte_data(client,
            LM95234_REG_UTEMPH(index - 1));
  if (val < 0)
   return val;
  temp = val << 8;
  val = i2c_smbus_read_byte_data(client,
            LM95234_REG_UTEMPL(index - 1));
  if (val < 0)
   return val;
  temp |= val;
  *t = temp;
 }




 if (!temp) {
  val = i2c_smbus_read_byte_data(client,
            LM95234_REG_TEMPH(index));
  if (val < 0)
   return val;
  temp = val << 8;
  val = i2c_smbus_read_byte_data(client,
            LM95234_REG_TEMPL(index));
  if (val < 0)
   return val;
  temp |= val;
  *t = (s16)temp;
 }
 return 0;
}
