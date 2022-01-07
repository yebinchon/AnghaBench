
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct nmk_i2c_dev {int sm; int clk_freq; int tft; int rft; scalar_t__ virtbase; TYPE_1__* adev; int clk; } ;
struct TYPE_2__ {int dev; } ;


 int DIV_ROUND_UP (int,int) ;
 int DIV_ROUND_UP_ULL (unsigned long long,int) ;
 scalar_t__ I2C_BRCR ;
 scalar_t__ I2C_CR ;
 scalar_t__ I2C_DMAR ;




 scalar_t__ I2C_HSMCR ;
 scalar_t__ I2C_RFTR ;
 scalar_t__ I2C_SCR ;
 scalar_t__ I2C_TFTR ;
 int clk_get_rate (int ) ;
 int dev_dbg (int *,char*,int) ;
 int dev_err (int *,char*) ;
 int writel (int const,scalar_t__) ;

__attribute__((used)) static void setup_i2c_controller(struct nmk_i2c_dev *dev)
{
 u32 brcr1, brcr2;
 u32 i2c_clk, div;
 u32 ns;
 u16 slsu;

 writel(0x0, dev->virtbase + I2C_CR);
 writel(0x0, dev->virtbase + I2C_HSMCR);
 writel(0x0, dev->virtbase + I2C_TFTR);
 writel(0x0, dev->virtbase + I2C_RFTR);
 writel(0x0, dev->virtbase + I2C_DMAR);

 i2c_clk = clk_get_rate(dev->clk);
 ns = DIV_ROUND_UP_ULL(1000000000ULL, i2c_clk);
 switch (dev->sm) {
 case 131:
 case 130:
  slsu = DIV_ROUND_UP(100, ns);
  break;
 case 129:
  slsu = DIV_ROUND_UP(10, ns);
  break;
 case 128:
 default:
  slsu = DIV_ROUND_UP(250, ns);
  break;
 }
 slsu += 1;

 dev_dbg(&dev->adev->dev, "calculated SLSU = %04x\n", slsu);
 writel(slsu << 16, dev->virtbase + I2C_SCR);






 div = (dev->clk_freq > 100000) ? 3 : 2;
 brcr1 = 0 << 16;
 brcr2 = (i2c_clk/(dev->clk_freq * div)) & 0xffff;


 writel((brcr1 | brcr2), dev->virtbase + I2C_BRCR);







 if (dev->sm > 131) {
  dev_err(&dev->adev->dev,
   "do not support this mode defaulting to std. mode\n");
  brcr2 = i2c_clk/(100000 * 2) & 0xffff;
  writel((brcr1 | brcr2), dev->virtbase + I2C_BRCR);
  writel(128 << 4,
    dev->virtbase + I2C_CR);
 }
 writel(dev->sm << 4, dev->virtbase + I2C_CR);


 writel(dev->tft, dev->virtbase + I2C_TFTR);
 writel(dev->rft, dev->virtbase + I2C_RFTR);
}
