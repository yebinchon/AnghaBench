
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int hwirq; } ;


 unsigned int GIC_DUAL_DUAL ;
 unsigned int GIC_DUAL_SINGLE ;
 unsigned int GIC_HWIRQ_TO_SHARED (int ) ;
 unsigned int GIC_POL_ACTIVE_HIGH ;
 unsigned int GIC_POL_ACTIVE_LOW ;
 unsigned int GIC_POL_FALLING_EDGE ;
 unsigned int GIC_POL_RISING_EDGE ;
 unsigned int GIC_TRIG_EDGE ;
 unsigned int GIC_TRIG_LEVEL ;





 unsigned int IRQ_TYPE_SENSE_MASK ;
 int change_gic_dual (unsigned int,unsigned int) ;
 int change_gic_pol (unsigned int,unsigned int) ;
 int change_gic_trig (unsigned int,unsigned int) ;
 int gic_edge_irq_controller ;
 int gic_level_irq_controller ;
 int gic_lock ;
 int handle_edge_irq ;
 int handle_level_irq ;
 int irq_set_chip_handler_name_locked (struct irq_data*,int *,int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int gic_set_type(struct irq_data *d, unsigned int type)
{
 unsigned int irq, pol, trig, dual;
 unsigned long flags;

 irq = GIC_HWIRQ_TO_SHARED(d->hwirq);

 spin_lock_irqsave(&gic_lock, flags);
 switch (type & IRQ_TYPE_SENSE_MASK) {
 case 131:
  pol = GIC_POL_FALLING_EDGE;
  trig = GIC_TRIG_EDGE;
  dual = GIC_DUAL_SINGLE;
  break;
 case 130:
  pol = GIC_POL_RISING_EDGE;
  trig = GIC_TRIG_EDGE;
  dual = GIC_DUAL_SINGLE;
  break;
 case 132:
  pol = 0;
  trig = GIC_TRIG_EDGE;
  dual = GIC_DUAL_DUAL;
  break;
 case 128:
  pol = GIC_POL_ACTIVE_LOW;
  trig = GIC_TRIG_LEVEL;
  dual = GIC_DUAL_SINGLE;
  break;
 case 129:
 default:
  pol = GIC_POL_ACTIVE_HIGH;
  trig = GIC_TRIG_LEVEL;
  dual = GIC_DUAL_SINGLE;
  break;
 }

 change_gic_pol(irq, pol);
 change_gic_trig(irq, trig);
 change_gic_dual(irq, dual);

 if (trig == GIC_TRIG_EDGE)
  irq_set_chip_handler_name_locked(d, &gic_edge_irq_controller,
       handle_edge_irq, ((void*)0));
 else
  irq_set_chip_handler_name_locked(d, &gic_level_irq_controller,
       handle_level_irq, ((void*)0));
 spin_unlock_irqrestore(&gic_lock, flags);

 return 0;
}
