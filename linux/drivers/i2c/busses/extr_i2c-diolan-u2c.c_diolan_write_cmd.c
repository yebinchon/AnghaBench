
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_diolan_u2c {scalar_t__ olen; } ;


 scalar_t__ DIOLAN_FLUSH_LEN ;
 int diolan_usb_transfer (struct i2c_diolan_u2c*) ;

__attribute__((used)) static int diolan_write_cmd(struct i2c_diolan_u2c *dev, bool flush)
{
 if (flush || dev->olen >= DIOLAN_FLUSH_LEN)
  return diolan_usb_transfer(dev);
 return 0;
}
