
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct highlander_i2c_dev {int dev; scalar_t__ base; } ;


 scalar_t__ SMCR ;
 int SMCR_IRIC ;
 int cond_resched () ;
 int cpu_relax () ;
 int dev_err (int ,char*) ;
 int iic_timeout ;
 int ioread16 (scalar_t__) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int ) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

__attribute__((used)) static void highlander_i2c_poll(struct highlander_i2c_dev *dev)
{
 unsigned long timeout;
 u16 smcr;

 timeout = jiffies + msecs_to_jiffies(iic_timeout);
 for (;;) {
  smcr = ioread16(dev->base + SMCR);







  if (smcr & SMCR_IRIC)
   return;
  if (time_after(jiffies, timeout))
   break;

  cpu_relax();
  cond_resched();
 }

 dev_err(dev->dev, "polling timed out\n");
}
