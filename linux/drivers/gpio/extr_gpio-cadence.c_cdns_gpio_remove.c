
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct cdns_gpio_chip {int pclk; scalar_t__ regs; int bypass_orig; } ;


 scalar_t__ CDNS_GPIO_BYPASS_MODE ;
 int clk_disable_unprepare (int ) ;
 int iowrite32 (int ,scalar_t__) ;
 struct cdns_gpio_chip* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int cdns_gpio_remove(struct platform_device *pdev)
{
 struct cdns_gpio_chip *cgpio = platform_get_drvdata(pdev);

 iowrite32(cgpio->bypass_orig, cgpio->regs + CDNS_GPIO_BYPASS_MODE);
 clk_disable_unprepare(cgpio->pclk);

 return 0;
}
