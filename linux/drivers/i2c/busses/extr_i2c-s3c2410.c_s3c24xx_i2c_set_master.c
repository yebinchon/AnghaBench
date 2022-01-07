
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c24xx_i2c {scalar_t__ regs; } ;


 int ETIMEDOUT ;
 scalar_t__ S3C2410_IICSTAT ;
 unsigned long S3C2410_IICSTAT_BUSBUSY ;
 int msleep (int) ;
 unsigned long readl (scalar_t__) ;

__attribute__((used)) static int s3c24xx_i2c_set_master(struct s3c24xx_i2c *i2c)
{
 unsigned long iicstat;
 int timeout = 400;

 while (timeout-- > 0) {
  iicstat = readl(i2c->regs + S3C2410_IICSTAT);

  if (!(iicstat & S3C2410_IICSTAT_BUSBUSY))
   return 0;

  msleep(1);
 }

 return -ETIMEDOUT;
}
