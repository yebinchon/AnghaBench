
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos_dsi {int irq; int te_gpio; } ;


 int disable_irq (int ) ;
 scalar_t__ gpio_is_valid (int ) ;
 int gpio_to_irq (int ) ;

__attribute__((used)) static void exynos_dsi_disable_irq(struct exynos_dsi *dsi)
{
 if (gpio_is_valid(dsi->te_gpio))
  disable_irq(gpio_to_irq(dsi->te_gpio));

 disable_irq(dsi->irq);
}
