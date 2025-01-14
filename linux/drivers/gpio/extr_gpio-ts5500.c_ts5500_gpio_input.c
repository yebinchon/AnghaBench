
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ts5500_priv {int lock; struct ts5500_dio* pinout; } ;
struct ts5500_dio {int control_addr; int control_mask; scalar_t__ no_output; scalar_t__ no_input; } ;
struct gpio_chip {int dummy; } ;


 int ENXIO ;
 struct ts5500_priv* gpiochip_get_data (struct gpio_chip*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int ts5500_clear_mask (int ,int ) ;

__attribute__((used)) static int ts5500_gpio_input(struct gpio_chip *chip, unsigned offset)
{
 struct ts5500_priv *priv = gpiochip_get_data(chip);
 const struct ts5500_dio line = priv->pinout[offset];
 unsigned long flags;

 if (line.no_input)
  return -ENXIO;

 if (line.no_output)
  return 0;

 spin_lock_irqsave(&priv->lock, flags);
 ts5500_clear_mask(line.control_mask, line.control_addr);
 spin_unlock_irqrestore(&priv->lock, flags);

 return 0;
}
