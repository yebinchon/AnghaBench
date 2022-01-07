
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sch_gpio {int lock; } ;
struct gpio_chip {int dummy; } ;


 int GLV ;
 struct sch_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int sch_gpio_reg_set (struct sch_gpio*,unsigned int,int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void sch_gpio_set(struct gpio_chip *gc, unsigned gpio_num, int val)
{
 struct sch_gpio *sch = gpiochip_get_data(gc);

 spin_lock(&sch->lock);
 sch_gpio_reg_set(sch, gpio_num, GLV, val);
 spin_unlock(&sch->lock);
}
