
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {int lock; int pm_base; } ;


 int BIT (unsigned int) ;
 int ENXIO ;
 int ICHX_READ (int ,int ) ;
 int ICHX_WRITE (int,int ,int ) ;
 int ichx_gpio_get (struct gpio_chip*,unsigned int) ;
 TYPE_1__ ichx_priv ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ich6_gpio_get(struct gpio_chip *chip, unsigned nr)
{
 unsigned long flags;
 u32 data;





 if (nr < 16) {
  if (!ichx_priv.pm_base)
   return -ENXIO;

  spin_lock_irqsave(&ichx_priv.lock, flags);


  ICHX_WRITE(BIT(16 + nr), 0, ichx_priv.pm_base);
  data = ICHX_READ(0, ichx_priv.pm_base);

  spin_unlock_irqrestore(&ichx_priv.lock, flags);

  return !!((data >> 16) & BIT(nr));
 } else {
  return ichx_gpio_get(chip, nr);
 }
}
