
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c24xx_i2c {int dev; scalar_t__ regs; } ;
typedef int ktime_t ;


 int S3C2410_IDLE_TIMEOUT ;
 scalar_t__ S3C2410_IICSTAT ;
 unsigned long S3C2410_IICSTAT_START ;
 int cpu_relax () ;
 int dev_dbg (int ,char*) ;
 int dev_warn (int ,char*) ;
 int ktime_get () ;
 int ktime_us_delta (int ,int ) ;
 unsigned long readl (scalar_t__) ;
 int usleep_range (unsigned long,int) ;

__attribute__((used)) static void s3c24xx_i2c_wait_idle(struct s3c24xx_i2c *i2c)
{
 unsigned long iicstat;
 ktime_t start, now;
 unsigned long delay;
 int spins;



 dev_dbg(i2c->dev, "waiting for bus idle\n");

 start = now = ktime_get();
 spins = 3;
 iicstat = readl(i2c->regs + S3C2410_IICSTAT);
 while ((iicstat & S3C2410_IICSTAT_START) && --spins) {
  cpu_relax();
  iicstat = readl(i2c->regs + S3C2410_IICSTAT);
 }
 delay = 1;
 while ((iicstat & S3C2410_IICSTAT_START) &&
        ktime_us_delta(now, start) < S3C2410_IDLE_TIMEOUT) {
  usleep_range(delay, 2 * delay);
  if (delay < S3C2410_IDLE_TIMEOUT / 10)
   delay <<= 1;
  now = ktime_get();
  iicstat = readl(i2c->regs + S3C2410_IICSTAT);
 }

 if (iicstat & S3C2410_IICSTAT_START)
  dev_warn(i2c->dev, "timeout waiting for bus idle\n");
}
