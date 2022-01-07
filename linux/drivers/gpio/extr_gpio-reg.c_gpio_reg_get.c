
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gpio_reg {int direction; int out; int reg; } ;
struct gpio_chip {int dummy; } ;


 int BIT (unsigned int) ;
 int readl_relaxed (int ) ;
 struct gpio_reg* to_gpio_reg (struct gpio_chip*) ;

__attribute__((used)) static int gpio_reg_get(struct gpio_chip *gc, unsigned offset)
{
 struct gpio_reg *r = to_gpio_reg(gc);
 u32 val, mask = BIT(offset);

 if (r->direction & mask) {




  readl_relaxed(r->reg);
  val = readl_relaxed(r->reg);
 } else {
  val = r->out;
 }
 return !!(val & mask);
}
