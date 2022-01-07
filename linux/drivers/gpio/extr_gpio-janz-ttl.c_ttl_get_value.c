
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ttl_module {int porta_shadow; int portb_shadow; int portc_shadow; int lock; } ;
struct gpio_chip {int parent; } ;


 int BIT (unsigned int) ;
 struct ttl_module* dev_get_drvdata (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int ttl_get_value(struct gpio_chip *gpio, unsigned offset)
{
 struct ttl_module *mod = dev_get_drvdata(gpio->parent);
 u8 *shadow;
 int ret;

 if (offset < 8) {
  shadow = &mod->porta_shadow;
 } else if (offset < 16) {
  shadow = &mod->portb_shadow;
  offset -= 8;
 } else {
  shadow = &mod->portc_shadow;
  offset -= 16;
 }

 spin_lock(&mod->lock);
 ret = *shadow & BIT(offset);
 spin_unlock(&mod->lock);
 return !!ret;
}
