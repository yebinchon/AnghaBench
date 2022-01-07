
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct omap_i2c_dev {int bb_valid; int dev; } ;


 unsigned long OMAP_I2C_BUS_FREE_TIMEOUT ;
 int OMAP_I2C_STAT_BB ;
 int OMAP_I2C_STAT_BF ;
 int OMAP_I2C_STAT_REG ;
 int OMAP_I2C_SYSTEST_REG ;
 int OMAP_I2C_SYSTEST_SCL_I_FUNC ;
 int OMAP_I2C_SYSTEST_SDA_I_FUNC ;
 unsigned long OMAP_I2C_TIMEOUT ;
 int dev_warn (int ,char*) ;
 unsigned long jiffies ;
 int msleep (int) ;
 int omap_i2c_read_reg (struct omap_i2c_dev*,int ) ;
 int omap_i2c_recover_bus (struct omap_i2c_dev*) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

__attribute__((used)) static int omap_i2c_wait_for_bb_valid(struct omap_i2c_dev *omap)
{
 unsigned long bus_free_timeout = 0;
 unsigned long timeout;
 int bus_free = 0;
 u16 stat, systest;

 if (omap->bb_valid)
  return 0;

 timeout = jiffies + OMAP_I2C_TIMEOUT;
 while (1) {
  stat = omap_i2c_read_reg(omap, OMAP_I2C_STAT_REG);





  if (stat & (OMAP_I2C_STAT_BB | OMAP_I2C_STAT_BF))
   break;





  systest = omap_i2c_read_reg(omap, OMAP_I2C_SYSTEST_REG);
  if ((systest & OMAP_I2C_SYSTEST_SCL_I_FUNC) &&
      (systest & OMAP_I2C_SYSTEST_SDA_I_FUNC)) {
   if (!bus_free) {
    bus_free_timeout = jiffies +
     OMAP_I2C_BUS_FREE_TIMEOUT;
    bus_free = 1;
   }






   if (time_after(jiffies, bus_free_timeout))
    break;
  } else {
   bus_free = 0;
  }

  if (time_after(jiffies, timeout)) {





   dev_warn(omap->dev, "timeout waiting for bus ready\n");
   return omap_i2c_recover_bus(omap);
  }

  msleep(1);
 }

 omap->bb_valid = 1;
 return 0;
}
