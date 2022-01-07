
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpc32xx_tsc {int clk; } ;


 int LPC32XX_TSC_ADCCON_AUTO_EN ;
 int LPC32XX_TSC_CON ;
 int clk_disable_unprepare (int ) ;
 int tsc_readl (struct lpc32xx_tsc*,int ) ;
 int tsc_writel (struct lpc32xx_tsc*,int ,int) ;

__attribute__((used)) static void lpc32xx_stop_tsc(struct lpc32xx_tsc *tsc)
{

 tsc_writel(tsc, LPC32XX_TSC_CON,
     tsc_readl(tsc, LPC32XX_TSC_CON) &
        ~LPC32XX_TSC_ADCCON_AUTO_EN);

 clk_disable_unprepare(tsc->clk);
}
