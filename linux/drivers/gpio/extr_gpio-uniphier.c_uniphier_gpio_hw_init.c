
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uniphier_gpio_priv {scalar_t__ regs; } ;


 scalar_t__ UNIPHIER_GPIO_IRQ_FLT_CYC ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void uniphier_gpio_hw_init(struct uniphier_gpio_priv *priv)
{







 writel(0xff, priv->regs + UNIPHIER_GPIO_IRQ_FLT_CYC);
}
