
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_smbus_alert_setup {int dummy; } ;
struct i2c_client {int dummy; } ;
struct i2c_board_info {struct i2c_smbus_alert_setup* platform_data; int member_0; } ;
struct i2c_adapter {int dummy; } ;


 int I2C_BOARD_INFO (char*,int) ;
 struct i2c_client* i2c_new_device (struct i2c_adapter*,struct i2c_board_info*) ;

struct i2c_client *i2c_setup_smbus_alert(struct i2c_adapter *adapter,
      struct i2c_smbus_alert_setup *setup)
{
 struct i2c_board_info ara_board_info = {
  I2C_BOARD_INFO("smbus_alert", 0x0c),
  .platform_data = setup,
 };

 return i2c_new_device(adapter, &ara_board_info);
}
