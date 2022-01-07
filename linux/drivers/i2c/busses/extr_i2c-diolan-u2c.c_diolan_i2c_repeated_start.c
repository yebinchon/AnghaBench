
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_diolan_u2c {int dummy; } ;


 int CMD_I2C_REPEATED_START ;
 int diolan_usb_cmd (struct i2c_diolan_u2c*,int ,int) ;

__attribute__((used)) static int diolan_i2c_repeated_start(struct i2c_diolan_u2c *dev)
{
 return diolan_usb_cmd(dev, CMD_I2C_REPEATED_START, 0);
}
