
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xiic_i2c {scalar_t__ tx_msg; } ;


 int EBUSY ;
 int msleep (int) ;
 int xiic_bus_busy (struct xiic_i2c*) ;

__attribute__((used)) static int xiic_busy(struct xiic_i2c *i2c)
{
 int tries = 3;
 int err;

 if (i2c->tx_msg)
  return -EBUSY;





 err = xiic_bus_busy(i2c);
 while (err && tries--) {
  msleep(1);
  err = xiic_bus_busy(i2c);
 }

 return err;
}
