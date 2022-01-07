
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sa1100_gpio_chip {int irqwake; int irqrising; int irqfalling; scalar_t__ membase; } ;


 scalar_t__ R_GEDR ;
 scalar_t__ R_GFER ;
 scalar_t__ R_GRER ;
 int readl_relaxed (scalar_t__) ;
 struct sa1100_gpio_chip sa1100_gpio_chip ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static int sa1100_gpio_suspend(void)
{
 struct sa1100_gpio_chip *sgc = &sa1100_gpio_chip;




 writel_relaxed(sgc->irqwake & sgc->irqrising, sgc->membase + R_GRER);
 writel_relaxed(sgc->irqwake & sgc->irqfalling, sgc->membase + R_GFER);




 writel_relaxed(readl_relaxed(sgc->membase + R_GEDR),
         sgc->membase + R_GEDR);

 return 0;
}
