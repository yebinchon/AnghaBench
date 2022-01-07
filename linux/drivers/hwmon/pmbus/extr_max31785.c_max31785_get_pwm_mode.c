
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int PB_FAN_1_RPM ;
 int PMBUS_FAN_COMMAND_1 ;
 int PMBUS_FAN_CONFIG_12 ;
 int pmbus_read_byte_data (struct i2c_client*,int,int ) ;
 int pmbus_read_word_data (struct i2c_client*,int,int ) ;

__attribute__((used)) static int max31785_get_pwm_mode(struct i2c_client *client, int page)
{
 int config;
 int command;

 config = pmbus_read_byte_data(client, page, PMBUS_FAN_CONFIG_12);
 if (config < 0)
  return config;

 command = pmbus_read_word_data(client, page, PMBUS_FAN_COMMAND_1);
 if (command < 0)
  return command;

 if (config & PB_FAN_1_RPM)
  return (command >= 0x8000) ? 3 : 2;

 if (command >= 0x8000)
  return 3;
 else if (command >= 0x2711)
  return 0;

 return 1;
}
