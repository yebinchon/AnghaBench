
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_diolan_u2c {int dummy; } ;


 int CMD_I2C_SET_CLK_SYNC ;
 int diolan_usb_cmd_data (struct i2c_diolan_u2c*,int ,int,int) ;

__attribute__((used)) static int diolan_set_clock_synch(struct i2c_diolan_u2c *dev, bool enable)
{
 return diolan_usb_cmd_data(dev, CMD_I2C_SET_CLK_SYNC, enable, 1);
}
