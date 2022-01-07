
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct winbond_gpio_info {int datareg; int invreg; int dev; } ;
struct gpio_chip {int dummy; } ;


 unsigned long* gpiochip_get_data (struct gpio_chip*) ;
 int winbond_gpio_get_info (unsigned int*,struct winbond_gpio_info const**) ;
 scalar_t__ winbond_sio_enter (unsigned long) ;
 int winbond_sio_leave (unsigned long) ;
 int winbond_sio_reg_bclear (unsigned long,int ,unsigned int) ;
 int winbond_sio_reg_bset (unsigned long,int ,unsigned int) ;
 scalar_t__ winbond_sio_reg_btest (unsigned long,int ,unsigned int) ;
 int winbond_sio_select_logical (unsigned long,int ) ;

__attribute__((used)) static void winbond_gpio_set(struct gpio_chip *gc, unsigned int offset,
        int val)
{
 unsigned long *base = gpiochip_get_data(gc);
 const struct winbond_gpio_info *info;

 if (!winbond_gpio_get_info(&offset, &info))
  return;

 if (winbond_sio_enter(*base) != 0)
  return;

 winbond_sio_select_logical(*base, info->dev);

 if (winbond_sio_reg_btest(*base, info->invreg, offset))
  val = !val;

 if (val)
  winbond_sio_reg_bset(*base, info->datareg, offset);
 else
  winbond_sio_reg_bclear(*base, info->datareg, offset);

 winbond_sio_leave(*base);
}
