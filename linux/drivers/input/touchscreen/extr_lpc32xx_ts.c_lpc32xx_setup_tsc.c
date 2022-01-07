
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lpc32xx_tsc {int clk; } ;


 int LPC32XX_TSC_ADCCON_AUTO_EN ;
 int LPC32XX_TSC_ADCCON_IRQ_TO_FIFO_4 ;
 int LPC32XX_TSC_ADCCON_POWER_UP ;
 int LPC32XX_TSC_ADCCON_X_SAMPLE_SIZE (int) ;
 int LPC32XX_TSC_ADCCON_Y_SAMPLE_SIZE (int) ;
 int LPC32XX_TSC_AUX_MAX ;
 int LPC32XX_TSC_AUX_MIN ;
 int LPC32XX_TSC_AUX_UTR ;
 int LPC32XX_TSC_CON ;
 int LPC32XX_TSC_DTR ;
 int LPC32XX_TSC_DXP ;
 int LPC32XX_TSC_MAX_X ;
 int LPC32XX_TSC_MAX_XY_VAL ;
 int LPC32XX_TSC_MAX_Y ;
 int LPC32XX_TSC_MIN_X ;
 int LPC32XX_TSC_MIN_XY_VAL ;
 int LPC32XX_TSC_MIN_Y ;
 int LPC32XX_TSC_RTR ;
 int LPC32XX_TSC_SEL ;
 int LPC32XX_TSC_SEL_DEFVAL ;
 int LPC32XX_TSC_TTR ;
 int LPC32XX_TSC_UTR ;
 int clk_prepare_enable (int ) ;
 int lpc32xx_fifo_clear (struct lpc32xx_tsc*) ;
 int tsc_readl (struct lpc32xx_tsc*,int ) ;
 int tsc_writel (struct lpc32xx_tsc*,int ,int) ;

__attribute__((used)) static int lpc32xx_setup_tsc(struct lpc32xx_tsc *tsc)
{
 u32 tmp;
 int err;

 err = clk_prepare_enable(tsc->clk);
 if (err)
  return err;

 tmp = tsc_readl(tsc, LPC32XX_TSC_CON) & ~LPC32XX_TSC_ADCCON_POWER_UP;


 tmp = LPC32XX_TSC_ADCCON_IRQ_TO_FIFO_4 |
       LPC32XX_TSC_ADCCON_X_SAMPLE_SIZE(10) |
       LPC32XX_TSC_ADCCON_Y_SAMPLE_SIZE(10);
 tsc_writel(tsc, LPC32XX_TSC_CON, tmp);


 tsc_writel(tsc, LPC32XX_TSC_SEL, LPC32XX_TSC_SEL_DEFVAL);
 tsc_writel(tsc, LPC32XX_TSC_MIN_X, LPC32XX_TSC_MIN_XY_VAL);
 tsc_writel(tsc, LPC32XX_TSC_MAX_X, LPC32XX_TSC_MAX_XY_VAL);
 tsc_writel(tsc, LPC32XX_TSC_MIN_Y, LPC32XX_TSC_MIN_XY_VAL);
 tsc_writel(tsc, LPC32XX_TSC_MAX_Y, LPC32XX_TSC_MAX_XY_VAL);


 tsc_writel(tsc, LPC32XX_TSC_AUX_UTR, 0);
 tsc_writel(tsc, LPC32XX_TSC_AUX_MIN, 0);
 tsc_writel(tsc, LPC32XX_TSC_AUX_MAX, 0);







 tsc_writel(tsc, LPC32XX_TSC_RTR, 0x2);
 tsc_writel(tsc, LPC32XX_TSC_DTR, 0x2);
 tsc_writel(tsc, LPC32XX_TSC_TTR, 0x10);
 tsc_writel(tsc, LPC32XX_TSC_DXP, 0x4);
 tsc_writel(tsc, LPC32XX_TSC_UTR, 88);

 lpc32xx_fifo_clear(tsc);


 tsc_writel(tsc, LPC32XX_TSC_CON, tmp | LPC32XX_TSC_ADCCON_AUTO_EN);

 return 0;
}
