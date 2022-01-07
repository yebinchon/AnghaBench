
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;
struct gpio_rcar_priv {int wakeup_path; scalar_t__ irq_parent; int dev; } ;
struct gpio_chip {int dummy; } ;


 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int dev_dbg (int ,char*,scalar_t__) ;
 struct gpio_rcar_priv* gpiochip_get_data (struct gpio_chip*) ;
 struct gpio_chip* irq_data_get_irq_chip_data (struct irq_data*) ;
 int irq_set_irq_wake (scalar_t__,unsigned int) ;

__attribute__((used)) static int gpio_rcar_irq_set_wake(struct irq_data *d, unsigned int on)
{
 struct gpio_chip *gc = irq_data_get_irq_chip_data(d);
 struct gpio_rcar_priv *p = gpiochip_get_data(gc);
 int error;

 if (p->irq_parent) {
  error = irq_set_irq_wake(p->irq_parent, on);
  if (error) {
   dev_dbg(p->dev, "irq %u doesn't support irq_set_wake\n",
    p->irq_parent);
   p->irq_parent = 0;
  }
 }

 if (on)
  atomic_inc(&p->wakeup_path);
 else
  atomic_dec(&p->wakeup_path);

 return 0;
}
