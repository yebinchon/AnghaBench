
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct i2c_client {int dummy; } ;


 int ENODATA ;
 int PB_FAN_1_RPM ;


 int max31785_pwm_enable (struct i2c_client*,int,int ) ;
 int max31785_scale_pwm (int ) ;
 int pmbus_update_fan (struct i2c_client*,int,int ,int ,int ,int ) ;

__attribute__((used)) static int max31785_write_word_data(struct i2c_client *client, int page,
        int reg, u16 word)
{
 switch (reg) {
 case 129:
  return pmbus_update_fan(client, page, 0, 0, PB_FAN_1_RPM,
     max31785_scale_pwm(word));
 case 128:
  return max31785_pwm_enable(client, page, word);
 default:
  break;
 }

 return -ENODATA;
}
