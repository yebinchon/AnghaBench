
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpc32xx_kscan_drv {int clk; int kscan_base; } ;
struct input_dev {int dummy; } ;


 int LPC32XX_KS_IRQ (int ) ;
 int clk_disable_unprepare (int ) ;
 struct lpc32xx_kscan_drv* input_get_drvdata (struct input_dev*) ;
 int writel (int,int ) ;

__attribute__((used)) static void lpc32xx_kscan_close(struct input_dev *dev)
{
 struct lpc32xx_kscan_drv *kscandat = input_get_drvdata(dev);

 writel(1, LPC32XX_KS_IRQ(kscandat->kscan_base));
 clk_disable_unprepare(kscandat->clk);
}
