
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ts5500_priv {int lock; struct ts5500_dio* pinout; } ;
struct ts5500_dio {int value_addr; int value_mask; int control_addr; int control_mask; int no_input; scalar_t__ no_output; } ;
struct gpio_chip {int dummy; } ;


 int ENXIO ;
 struct ts5500_priv* gpiochip_get_data (struct gpio_chip*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int ts5500_clear_mask (int ,int ) ;
 int ts5500_set_mask (int ,int ) ;

__attribute__((used)) static int ts5500_gpio_output(struct gpio_chip *chip, unsigned offset, int val)
{
 struct ts5500_priv *priv = gpiochip_get_data(chip);
 const struct ts5500_dio line = priv->pinout[offset];
 unsigned long flags;

 if (line.no_output)
  return -ENXIO;

 spin_lock_irqsave(&priv->lock, flags);
 if (!line.no_input)
  ts5500_set_mask(line.control_mask, line.control_addr);

 if (val)
  ts5500_set_mask(line.value_mask, line.value_addr);
 else
  ts5500_clear_mask(line.value_mask, line.value_addr);
 spin_unlock_irqrestore(&priv->lock, flags);

 return 0;
}
