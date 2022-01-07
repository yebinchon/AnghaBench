
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct max8997_led {int enabled; TYPE_1__* iodev; } ;
struct i2c_client {int dummy; } ;
struct TYPE_2__ {int dev; struct i2c_client* i2c; } ;


 int MAX8997_LED_BOOST_ENABLE_MASK ;
 int MAX8997_REG_BOOST_CNTL ;
 int dev_err (int ,char*,int) ;
 int max8997_update_reg (struct i2c_client*,int ,int ,int ) ;

__attribute__((used)) static void max8997_led_enable(struct max8997_led *led, bool enable)
{
 int ret;
 struct i2c_client *client = led->iodev->i2c;
 u8 val = 0, mask = MAX8997_LED_BOOST_ENABLE_MASK;

 if (led->enabled == enable)
  return;

 val = enable ? MAX8997_LED_BOOST_ENABLE_MASK : 0;

 ret = max8997_update_reg(client, MAX8997_REG_BOOST_CNTL, val, mask);
 if (ret)
  dev_err(led->iodev->dev,
   "failed to update register(%d)\n", ret);

 led->enabled = enable;
}
