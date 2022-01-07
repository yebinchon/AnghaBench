
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_diolan_u2c {int ocount; int olen; int * obuffer; } ;


 int diolan_write_cmd (struct i2c_diolan_u2c*,int) ;

__attribute__((used)) static int diolan_usb_cmd(struct i2c_diolan_u2c *dev, u8 command, bool flush)
{
 dev->obuffer[dev->olen++] = command;
 dev->ocount++;
 return diolan_write_cmd(dev, flush);
}
