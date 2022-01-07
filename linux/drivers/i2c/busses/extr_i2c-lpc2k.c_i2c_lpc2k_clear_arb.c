
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpc2k_i2c {scalar_t__ base; } ;


 int EBUSY ;
 scalar_t__ LPC24XX_I2CONSET ;
 scalar_t__ LPC24XX_I2STAT ;
 int LPC24XX_STO ;
 scalar_t__ M_I2C_IDLE ;
 int cpu_relax () ;
 int i2c_lpc2k_reset (struct lpc2k_i2c*) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 scalar_t__ readl (scalar_t__) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int i2c_lpc2k_clear_arb(struct lpc2k_i2c *i2c)
{
 unsigned long timeout = jiffies + msecs_to_jiffies(1000);





 writel(LPC24XX_STO, i2c->base + LPC24XX_I2CONSET);


 while (readl(i2c->base + LPC24XX_I2STAT) != M_I2C_IDLE) {
  if (time_after(jiffies, timeout)) {

   i2c_lpc2k_reset(i2c);
   return -EBUSY;
  }

  cpu_relax();
 }

 return 0;
}
