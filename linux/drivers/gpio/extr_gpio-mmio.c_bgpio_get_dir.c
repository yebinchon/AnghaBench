
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int bgpio_dir; int (* read_reg ) (scalar_t__) ;scalar_t__ reg_dir_in; scalar_t__ reg_dir_out; scalar_t__ bgpio_dir_unreadable; } ;


 int bgpio_line2mask (struct gpio_chip*,unsigned int) ;
 int stub1 (scalar_t__) ;
 int stub2 (scalar_t__) ;

__attribute__((used)) static int bgpio_get_dir(struct gpio_chip *gc, unsigned int gpio)
{

 if (gc->bgpio_dir_unreadable)
  return !(gc->bgpio_dir & bgpio_line2mask(gc, gpio));
 if (gc->reg_dir_out)
  return !(gc->read_reg(gc->reg_dir_out) & bgpio_line2mask(gc, gpio));
 if (gc->reg_dir_in)
  return !!(gc->read_reg(gc->reg_dir_in) & bgpio_line2mask(gc, gpio));


 return 1;
}
