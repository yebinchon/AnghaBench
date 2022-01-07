
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_rcar_priv {int lock; scalar_t__ has_outdtsel; } ;
struct gpio_chip {int dummy; } ;


 int INOUTSEL ;
 int IOINTSEL ;
 int OUTDTSEL ;
 int POSNEG ;
 int gpio_rcar_modify_bit (struct gpio_rcar_priv*,int ,unsigned int,int) ;
 struct gpio_rcar_priv* gpiochip_get_data (struct gpio_chip*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void gpio_rcar_config_general_input_output_mode(struct gpio_chip *chip,
             unsigned int gpio,
             bool output)
{
 struct gpio_rcar_priv *p = gpiochip_get_data(chip);
 unsigned long flags;






 spin_lock_irqsave(&p->lock, flags);


 gpio_rcar_modify_bit(p, POSNEG, gpio, 0);


 gpio_rcar_modify_bit(p, IOINTSEL, gpio, 0);


 gpio_rcar_modify_bit(p, INOUTSEL, gpio, output);


 if (p->has_outdtsel && output)
  gpio_rcar_modify_bit(p, OUTDTSEL, gpio, 0);

 spin_unlock_irqrestore(&p->lock, flags);
}
