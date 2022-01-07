
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intc_irqpin_priv {int dummy; } ;


 int INTC_IRQPIN_REG_PRIO ;
 int intc_irqpin_read_modify_write (struct intc_irqpin_priv*,int ,int,int,int) ;

__attribute__((used)) static void intc_irqpin_mask_unmask_prio(struct intc_irqpin_priv *p,
      int irq, int do_mask)
{

 int bitfield_width = 4;
 int shift = 32 - (irq + 1) * bitfield_width;

 intc_irqpin_read_modify_write(p, INTC_IRQPIN_REG_PRIO,
          shift, bitfield_width,
          do_mask ? 0 : (1 << bitfield_width) - 1);
}
