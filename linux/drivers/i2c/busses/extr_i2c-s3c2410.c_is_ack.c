
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c24xx_i2c {int dev; scalar_t__ regs; } ;


 scalar_t__ S3C2410_IICCON ;
 int S3C2410_IICCON_IRQPEND ;
 scalar_t__ S3C2410_IICSTAT ;
 int S3C2410_IICSTAT_LASTBIT ;
 int dev_err (int ,char*) ;
 int readl (scalar_t__) ;
 int usleep_range (int,int) ;

__attribute__((used)) static bool is_ack(struct s3c24xx_i2c *i2c)
{
 int tries;

 for (tries = 50; tries; --tries) {
  if (readl(i2c->regs + S3C2410_IICCON)
   & S3C2410_IICCON_IRQPEND) {
   if (!(readl(i2c->regs + S3C2410_IICSTAT)
    & S3C2410_IICSTAT_LASTBIT))
    return 1;
  }
  usleep_range(1000, 2000);
 }
 dev_err(i2c->dev, "ack was not received\n");
 return 0;
}
