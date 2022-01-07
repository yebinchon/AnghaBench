
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos_dsi {int te_gpio; int irq; } ;


 int enable_irq (int ) ;
 scalar_t__ gpio_is_valid (int ) ;
 int gpio_to_irq (int ) ;

__attribute__((used)) static void exynos_dsi_enable_irq(struct exynos_dsi *dsi)
{
 enable_irq(dsi->irq);

 if (gpio_is_valid(dsi->te_gpio))
  enable_irq(gpio_to_irq(dsi->te_gpio));
}
