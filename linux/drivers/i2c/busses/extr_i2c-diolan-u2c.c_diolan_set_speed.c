
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_diolan_u2c {int dummy; } ;


 int CMD_I2C_SET_SPEED ;
 int diolan_usb_cmd_data (struct i2c_diolan_u2c*,int ,int ,int) ;

__attribute__((used)) static int diolan_set_speed(struct i2c_diolan_u2c *dev, u8 speed)
{
 return diolan_usb_cmd_data(dev, CMD_I2C_SET_SPEED, speed, 1);
}
