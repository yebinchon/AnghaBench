
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c24xx_i2c {int quirks; int state; scalar_t__ regs; int dev; } ;


 int QUIRK_HDMIPHY ;
 scalar_t__ S3C2410_IICSTAT ;
 unsigned long S3C2410_IICSTAT_START ;
 unsigned long S3C2410_IICSTAT_TXRXEN ;
 int STATE_STOP ;
 int dev_dbg (int ,char*) ;
 unsigned long readl (scalar_t__) ;
 int s3c24xx_i2c_disable_irq (struct s3c24xx_i2c*) ;
 int s3c24xx_i2c_master_complete (struct s3c24xx_i2c*,int) ;
 int writel (unsigned long,scalar_t__) ;

__attribute__((used)) static inline void s3c24xx_i2c_stop(struct s3c24xx_i2c *i2c, int ret)
{
 unsigned long iicstat = readl(i2c->regs + S3C2410_IICSTAT);

 dev_dbg(i2c->dev, "STOP\n");
 if (i2c->quirks & QUIRK_HDMIPHY) {

  iicstat &= ~S3C2410_IICSTAT_TXRXEN;
 } else {

  iicstat &= ~S3C2410_IICSTAT_START;
 }
 writel(iicstat, i2c->regs + S3C2410_IICSTAT);

 i2c->state = STATE_STOP;

 s3c24xx_i2c_master_complete(i2c, ret);
 s3c24xx_i2c_disable_irq(i2c);
}
