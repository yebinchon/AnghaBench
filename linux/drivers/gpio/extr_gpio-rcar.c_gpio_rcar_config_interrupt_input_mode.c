
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_rcar_priv {int lock; scalar_t__ has_both_edge_trigger; } ;


 int BIT (unsigned int) ;
 int BOTHEDGE ;
 int EDGLEVEL ;
 int INTCLR ;
 int IOINTSEL ;
 int POSNEG ;
 int gpio_rcar_modify_bit (struct gpio_rcar_priv*,int ,unsigned int,int) ;
 int gpio_rcar_write (struct gpio_rcar_priv*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void gpio_rcar_config_interrupt_input_mode(struct gpio_rcar_priv *p,
        unsigned int hwirq,
        bool active_high_rising_edge,
        bool level_trigger,
        bool both)
{
 unsigned long flags;






 spin_lock_irqsave(&p->lock, flags);


 gpio_rcar_modify_bit(p, POSNEG, hwirq, !active_high_rising_edge);


 gpio_rcar_modify_bit(p, EDGLEVEL, hwirq, !level_trigger);


 if (p->has_both_edge_trigger)
  gpio_rcar_modify_bit(p, BOTHEDGE, hwirq, both);


 gpio_rcar_modify_bit(p, IOINTSEL, hwirq, 1);


 if (!level_trigger)
  gpio_rcar_write(p, INTCLR, BIT(hwirq));

 spin_unlock_irqrestore(&p->lock, flags);
}
