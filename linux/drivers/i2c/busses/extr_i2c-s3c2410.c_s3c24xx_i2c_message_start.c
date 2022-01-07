
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c24xx_i2c {int quirks; scalar_t__ msg_num; int dev; scalar_t__ regs; int tx_setup; } ;
struct i2c_msg {int addr; int flags; } ;


 int I2C_M_RD ;
 int I2C_M_REV_DIR_ADDR ;
 int QUIRK_POLL ;
 scalar_t__ S3C2410_IICCON ;
 scalar_t__ S3C2410_IICDS ;
 scalar_t__ S3C2410_IICSTAT ;
 unsigned long S3C2410_IICSTAT_ARBITR ;
 unsigned long S3C2410_IICSTAT_MASTER_RX ;
 unsigned long S3C2410_IICSTAT_MASTER_TX ;
 unsigned long S3C2410_IICSTAT_START ;
 unsigned long S3C2410_IICSTAT_TXRXEN ;
 int dev_dbg (int ,char*,unsigned long,...) ;
 int dev_err (int ,char*) ;
 int i2c_s3c_irq_nextbyte (struct s3c24xx_i2c*,unsigned long) ;
 scalar_t__ is_ack (struct s3c24xx_i2c*) ;
 int ndelay (int ) ;
 unsigned long readl (scalar_t__) ;
 int s3c24xx_i2c_enable_ack (struct s3c24xx_i2c*) ;
 int writeb (unsigned int,scalar_t__) ;
 int writel (unsigned long,scalar_t__) ;

__attribute__((used)) static void s3c24xx_i2c_message_start(struct s3c24xx_i2c *i2c,
          struct i2c_msg *msg)
{
 unsigned int addr = (msg->addr & 0x7f) << 1;
 unsigned long stat;
 unsigned long iiccon;

 stat = 0;
 stat |= S3C2410_IICSTAT_TXRXEN;

 if (msg->flags & I2C_M_RD) {
  stat |= S3C2410_IICSTAT_MASTER_RX;
  addr |= 1;
 } else
  stat |= S3C2410_IICSTAT_MASTER_TX;

 if (msg->flags & I2C_M_REV_DIR_ADDR)
  addr ^= 1;


 s3c24xx_i2c_enable_ack(i2c);

 iiccon = readl(i2c->regs + S3C2410_IICCON);
 writel(stat, i2c->regs + S3C2410_IICSTAT);

 dev_dbg(i2c->dev, "START: %08lx to IICSTAT, %02x to DS\n", stat, addr);
 writeb(addr, i2c->regs + S3C2410_IICDS);





 ndelay(i2c->tx_setup);

 dev_dbg(i2c->dev, "iiccon, %08lx\n", iiccon);
 writel(iiccon, i2c->regs + S3C2410_IICCON);

 stat |= S3C2410_IICSTAT_START;
 writel(stat, i2c->regs + S3C2410_IICSTAT);

 if (i2c->quirks & QUIRK_POLL) {
  while ((i2c->msg_num != 0) && is_ack(i2c)) {
   i2c_s3c_irq_nextbyte(i2c, stat);
   stat = readl(i2c->regs + S3C2410_IICSTAT);

   if (stat & S3C2410_IICSTAT_ARBITR)
    dev_err(i2c->dev, "deal with arbitration loss\n");
  }
 }
}
