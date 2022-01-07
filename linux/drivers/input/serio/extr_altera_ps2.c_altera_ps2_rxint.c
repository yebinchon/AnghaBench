
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps2if {int io; int base; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 unsigned int readl (int ) ;
 int serio_interrupt (int ,unsigned int,int ) ;

__attribute__((used)) static irqreturn_t altera_ps2_rxint(int irq, void *dev_id)
{
 struct ps2if *ps2if = dev_id;
 unsigned int status;
 irqreturn_t handled = IRQ_NONE;

 while ((status = readl(ps2if->base)) & 0xffff0000) {
  serio_interrupt(ps2if->io, status & 0xff, 0);
  handled = IRQ_HANDLED;
 }

 return handled;
}
