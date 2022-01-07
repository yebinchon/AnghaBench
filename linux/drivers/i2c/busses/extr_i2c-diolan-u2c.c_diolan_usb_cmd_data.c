
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct i2c_diolan_u2c {int ocount; int olen; void** obuffer; } ;


 int diolan_write_cmd (struct i2c_diolan_u2c*,int) ;

__attribute__((used)) static int diolan_usb_cmd_data(struct i2c_diolan_u2c *dev, u8 command, u8 data,
          bool flush)
{
 dev->obuffer[dev->olen++] = command;
 dev->obuffer[dev->olen++] = data;
 dev->ocount++;
 return diolan_write_cmd(dev, flush);
}
