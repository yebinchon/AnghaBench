
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arc_ps2_data {int * port; } ;
typedef int irqreturn_t ;


 int ARC_PS2_PORTS ;
 int IRQ_HANDLED ;
 int arc_ps2_check_rx (struct arc_ps2_data*,int *) ;

__attribute__((used)) static irqreturn_t arc_ps2_interrupt(int irq, void *dev)
{
 struct arc_ps2_data *arc_ps2 = dev;
 int i;

 for (i = 0; i < ARC_PS2_PORTS; i++)
  arc_ps2_check_rx(arc_ps2, &arc_ps2->port[i]);

 return IRQ_HANDLED;
}
