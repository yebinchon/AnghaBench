
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos_dsi {int te_gpio; } ;


 int ENOENT ;
 int free_irq (int ,struct exynos_dsi*) ;
 int gpio_free (int ) ;
 scalar_t__ gpio_is_valid (int ) ;
 int gpio_to_irq (int ) ;

__attribute__((used)) static void exynos_dsi_unregister_te_irq(struct exynos_dsi *dsi)
{
 if (gpio_is_valid(dsi->te_gpio)) {
  free_irq(gpio_to_irq(dsi->te_gpio), dsi);
  gpio_free(dsi->te_gpio);
  dsi->te_gpio = -ENOENT;
 }
}
