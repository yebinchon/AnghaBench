
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpc32xx_kscan_drv {int kscan_base; int clk; } ;
struct input_dev {int dummy; } ;


 int LPC32XX_KS_IRQ (int ) ;
 int clk_prepare_enable (int ) ;
 struct lpc32xx_kscan_drv* input_get_drvdata (struct input_dev*) ;
 int writel (int,int ) ;

__attribute__((used)) static int lpc32xx_kscan_open(struct input_dev *dev)
{
 struct lpc32xx_kscan_drv *kscandat = input_get_drvdata(dev);
 int error;

 error = clk_prepare_enable(kscandat->clk);
 if (error)
  return error;

 writel(1, LPC32XX_KS_IRQ(kscandat->kscan_base));

 return 0;
}
