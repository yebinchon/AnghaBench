
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct idio_24_gpio {int lock; TYPE_1__* reg; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {int ctl; } ;


 unsigned long BIT (int) ;
 struct idio_24_gpio* gpiochip_get_data (struct gpio_chip*) ;
 unsigned long const ioread8 (int *) ;
 int iowrite8 (unsigned int,int *) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int idio_24_gpio_direction_input(struct gpio_chip *chip,
 unsigned int offset)
{
 struct idio_24_gpio *const idio24gpio = gpiochip_get_data(chip);
 unsigned long flags;
 unsigned int ctl_state;
 const unsigned long out_mode_mask = BIT(1);


 if (offset > 47) {
  raw_spin_lock_irqsave(&idio24gpio->lock, flags);


  ctl_state = ioread8(&idio24gpio->reg->ctl) & ~out_mode_mask;
  iowrite8(ctl_state, &idio24gpio->reg->ctl);

  raw_spin_unlock_irqrestore(&idio24gpio->lock, flags);
 }

 return 0;
}
