
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct winbond_gpio_info {int invreg; int datareg; int dev; } ;
struct gpio_chip {int dummy; } ;


 unsigned long* gpiochip_get_data (struct gpio_chip*) ;
 int winbond_gpio_get_info (unsigned int*,struct winbond_gpio_info const**) ;
 int winbond_sio_enter (unsigned long) ;
 int winbond_sio_leave (unsigned long) ;
 int winbond_sio_reg_btest (unsigned long,int ,unsigned int) ;
 int winbond_sio_select_logical (unsigned long,int ) ;

__attribute__((used)) static int winbond_gpio_get(struct gpio_chip *gc, unsigned int offset)
{
 unsigned long *base = gpiochip_get_data(gc);
 const struct winbond_gpio_info *info;
 bool val;

 winbond_gpio_get_info(&offset, &info);

 val = winbond_sio_enter(*base);
 if (val)
  return val;

 winbond_sio_select_logical(*base, info->dev);

 val = winbond_sio_reg_btest(*base, info->datareg, offset);
 if (winbond_sio_reg_btest(*base, info->invreg, offset))
  val = !val;

 winbond_sio_leave(*base);

 return val;
}
