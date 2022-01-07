
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c24xx_i2c {scalar_t__ regs; int dev; struct s3c2410_platform_i2c* pdata; } ;
struct s3c2410_platform_i2c {unsigned int slave_addr; } ;


 int EINVAL ;
 scalar_t__ S3C2410_IICADD ;
 scalar_t__ S3C2410_IICCON ;
 scalar_t__ S3C2410_IICSTAT ;
 int dev_dbg (int ,char*,int ) ;
 int dev_err (int ,char*) ;
 int dev_info (int ,char*,unsigned int) ;
 int readl (scalar_t__) ;
 scalar_t__ s3c24xx_i2c_clockrate (struct s3c24xx_i2c*,unsigned int*) ;
 int writeb (unsigned int,scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int s3c24xx_i2c_init(struct s3c24xx_i2c *i2c)
{
 struct s3c2410_platform_i2c *pdata;
 unsigned int freq;



 pdata = i2c->pdata;



 writeb(pdata->slave_addr, i2c->regs + S3C2410_IICADD);

 dev_info(i2c->dev, "slave address 0x%02x\n", pdata->slave_addr);

 writel(0, i2c->regs + S3C2410_IICCON);
 writel(0, i2c->regs + S3C2410_IICSTAT);



 if (s3c24xx_i2c_clockrate(i2c, &freq) != 0) {
  dev_err(i2c->dev, "cannot meet bus frequency required\n");
  return -EINVAL;
 }



 dev_info(i2c->dev, "bus frequency set to %d KHz\n", freq);
 dev_dbg(i2c->dev, "S3C2410_IICCON=0x%02x\n",
  readl(i2c->regs + S3C2410_IICCON));

 return 0;
}
