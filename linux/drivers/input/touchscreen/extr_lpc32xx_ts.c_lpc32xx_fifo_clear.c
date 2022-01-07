
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpc32xx_tsc {int dummy; } ;


 int LPC32XX_TSC_FIFO ;
 int LPC32XX_TSC_STAT ;
 int LPC32XX_TSC_STAT_FIFO_EMPTY ;
 int tsc_readl (struct lpc32xx_tsc*,int ) ;

__attribute__((used)) static void lpc32xx_fifo_clear(struct lpc32xx_tsc *tsc)
{
 while (!(tsc_readl(tsc, LPC32XX_TSC_STAT) &
   LPC32XX_TSC_STAT_FIFO_EMPTY))
  tsc_readl(tsc, LPC32XX_TSC_FIFO);
}
