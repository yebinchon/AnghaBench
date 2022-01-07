
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intc_irqpin_priv {int dummy; } ;


 int intc_irqpin_lock ;
 unsigned long intc_irqpin_read (struct intc_irqpin_priv*,int) ;
 int intc_irqpin_write (struct intc_irqpin_priv*,int,unsigned long) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void intc_irqpin_read_modify_write(struct intc_irqpin_priv *p,
       int reg, int shift,
       int width, int value)
{
 unsigned long flags;
 unsigned long tmp;

 raw_spin_lock_irqsave(&intc_irqpin_lock, flags);

 tmp = intc_irqpin_read(p, reg);
 tmp &= ~(((1 << width) - 1) << shift);
 tmp |= value << shift;
 intc_irqpin_write(p, reg, tmp);

 raw_spin_unlock_irqrestore(&intc_irqpin_lock, flags);
}
