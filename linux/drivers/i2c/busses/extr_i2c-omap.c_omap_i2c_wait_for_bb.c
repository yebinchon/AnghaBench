
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_i2c_dev {int dummy; } ;


 int OMAP_I2C_STAT_BB ;
 int OMAP_I2C_STAT_REG ;
 unsigned long OMAP_I2C_TIMEOUT ;
 unsigned long jiffies ;
 int msleep (int) ;
 int omap_i2c_read_reg (struct omap_i2c_dev*,int ) ;
 int omap_i2c_recover_bus (struct omap_i2c_dev*) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

__attribute__((used)) static int omap_i2c_wait_for_bb(struct omap_i2c_dev *omap)
{
 unsigned long timeout;

 timeout = jiffies + OMAP_I2C_TIMEOUT;
 while (omap_i2c_read_reg(omap, OMAP_I2C_STAT_REG) & OMAP_I2C_STAT_BB) {
  if (time_after(jiffies, timeout))
   return omap_i2c_recover_bus(omap);
  msleep(1);
 }

 return 0;
}
