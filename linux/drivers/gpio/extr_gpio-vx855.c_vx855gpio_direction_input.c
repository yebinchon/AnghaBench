
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct vx855_gpio {int lock; int io_gpo; } ;
struct gpio_chip {int dummy; } ;


 int EINVAL ;
 unsigned int NR_VX855_GPI ;
 unsigned int NR_VX855_GPInO ;
 int gpio_o_bit (unsigned int) ;
 struct vx855_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int inl (int ) ;
 int outl (int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int vx855gpio_direction_input(struct gpio_chip *gpio,
         unsigned int nr)
{
 struct vx855_gpio *vg = gpiochip_get_data(gpio);
 unsigned long flags;
 u_int32_t reg_out;


 if (nr < NR_VX855_GPI)
  return 0;


 if (nr < NR_VX855_GPInO)
  return -EINVAL;


 spin_lock_irqsave(&vg->lock, flags);
 reg_out = inl(vg->io_gpo);
 reg_out |= gpio_o_bit(nr - NR_VX855_GPInO);
 outl(reg_out, vg->io_gpo);
 spin_unlock_irqrestore(&vg->lock, flags);

 return 0;
}
