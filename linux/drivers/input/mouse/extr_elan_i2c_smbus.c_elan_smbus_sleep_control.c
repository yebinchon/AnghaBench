
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int ETP_SMBUS_SLEEP_CMD ;
 int i2c_smbus_write_byte (struct i2c_client*,int ) ;

__attribute__((used)) static int elan_smbus_sleep_control(struct i2c_client *client, bool sleep)
{
 if (sleep)
  return i2c_smbus_write_byte(client, ETP_SMBUS_SLEEP_CMD);
 else
  return 0;
}
