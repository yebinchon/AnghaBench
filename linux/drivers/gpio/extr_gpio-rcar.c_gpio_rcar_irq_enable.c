
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;
struct gpio_rcar_priv {int dummy; } ;
struct gpio_chip {int dummy; } ;


 int BIT (int ) ;
 int MSKCLR ;
 int gpio_rcar_write (struct gpio_rcar_priv*,int ,int ) ;
 struct gpio_rcar_priv* gpiochip_get_data (struct gpio_chip*) ;
 struct gpio_chip* irq_data_get_irq_chip_data (struct irq_data*) ;
 int irqd_to_hwirq (struct irq_data*) ;

__attribute__((used)) static void gpio_rcar_irq_enable(struct irq_data *d)
{
 struct gpio_chip *gc = irq_data_get_irq_chip_data(d);
 struct gpio_rcar_priv *p = gpiochip_get_data(gc);

 gpio_rcar_write(p, MSKCLR, BIT(irqd_to_hwirq(d)));
}
