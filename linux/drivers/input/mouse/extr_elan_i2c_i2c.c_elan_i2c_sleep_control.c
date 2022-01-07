
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int ETP_I2C_SLEEP ;
 int ETP_I2C_STAND_CMD ;
 int ETP_I2C_WAKE_UP ;
 int elan_i2c_write_cmd (struct i2c_client*,int ,int ) ;

__attribute__((used)) static int elan_i2c_sleep_control(struct i2c_client *client, bool sleep)
{
 return elan_i2c_write_cmd(client, ETP_I2C_STAND_CMD,
      sleep ? ETP_I2C_SLEEP : ETP_I2C_WAKE_UP);
}
