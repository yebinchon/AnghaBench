
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_diolan_u2c {int usb_dev; } ;


 int kfree (struct i2c_diolan_u2c*) ;
 int usb_put_dev (int ) ;

__attribute__((used)) static void diolan_u2c_free(struct i2c_diolan_u2c *dev)
{
 usb_put_dev(dev->usb_dev);
 kfree(dev);
}
