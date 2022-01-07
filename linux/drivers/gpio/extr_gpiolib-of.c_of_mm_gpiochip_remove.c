
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int label; } ;
struct of_mm_gpio_chip {int regs; struct gpio_chip gc; } ;


 int gpiochip_remove (struct gpio_chip*) ;
 int iounmap (int ) ;
 int kfree (int ) ;

void of_mm_gpiochip_remove(struct of_mm_gpio_chip *mm_gc)
{
 struct gpio_chip *gc = &mm_gc->gc;

 if (!mm_gc)
  return;

 gpiochip_remove(gc);
 iounmap(mm_gc->regs);
 kfree(gc->label);
}
