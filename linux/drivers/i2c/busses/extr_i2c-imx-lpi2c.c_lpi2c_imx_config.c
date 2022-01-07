
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lpi2c_imx_struct {scalar_t__ mode; int bitrate; scalar_t__ base; int clk; } ;
typedef enum lpi2c_imx_pincfg { ____Placeholder_lpi2c_imx_pincfg } lpi2c_imx_pincfg ;


 int EINVAL ;
 scalar_t__ HS ;
 unsigned int I2C_CLK_RATIO ;
 scalar_t__ LPI2C_MCCR0 ;
 scalar_t__ LPI2C_MCCR1 ;
 scalar_t__ LPI2C_MCFGR1 ;
 scalar_t__ LPI2C_MCFGR2 ;
 unsigned int MCFGR1_IGNACK ;
 int TWO_PIN_OD ;
 int TWO_PIN_OO ;
 scalar_t__ ULTRA_FAST ;
 unsigned int clk_get_rate (int ) ;
 int lpi2c_imx_set_mode (struct lpi2c_imx_struct*) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static int lpi2c_imx_config(struct lpi2c_imx_struct *lpi2c_imx)
{
 u8 prescale, filt, sethold, clkhi, clklo, datavd;
 unsigned int clk_rate, clk_cycle;
 enum lpi2c_imx_pincfg pincfg;
 unsigned int temp;

 lpi2c_imx_set_mode(lpi2c_imx);

 clk_rate = clk_get_rate(lpi2c_imx->clk);
 if (lpi2c_imx->mode == HS || lpi2c_imx->mode == ULTRA_FAST)
  filt = 0;
 else
  filt = 2;

 for (prescale = 0; prescale <= 7; prescale++) {
  clk_cycle = clk_rate / ((1 << prescale) * lpi2c_imx->bitrate)
       - 3 - (filt >> 1);
  clkhi = (clk_cycle + I2C_CLK_RATIO) / (I2C_CLK_RATIO + 1);
  clklo = clk_cycle - clkhi;
  if (clklo < 64)
   break;
 }

 if (prescale > 7)
  return -EINVAL;


 if (lpi2c_imx->mode == ULTRA_FAST)
  pincfg = TWO_PIN_OO;
 else
  pincfg = TWO_PIN_OD;
 temp = prescale | pincfg << 24;

 if (lpi2c_imx->mode == ULTRA_FAST)
  temp |= MCFGR1_IGNACK;

 writel(temp, lpi2c_imx->base + LPI2C_MCFGR1);


 temp = (filt << 16) | (filt << 24);
 writel(temp, lpi2c_imx->base + LPI2C_MCFGR2);


 sethold = clkhi;
 datavd = clkhi >> 1;
 temp = datavd << 24 | sethold << 16 | clkhi << 8 | clklo;

 if (lpi2c_imx->mode == HS)
  writel(temp, lpi2c_imx->base + LPI2C_MCCR1);
 else
  writel(temp, lpi2c_imx->base + LPI2C_MCCR0);

 return 0;
}
