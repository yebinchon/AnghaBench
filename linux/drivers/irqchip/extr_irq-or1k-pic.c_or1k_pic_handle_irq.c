
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int NO_IRQ ;
 int handle_domain_irq (int ,int,struct pt_regs*) ;
 int pic_get_irq (int) ;
 int root_domain ;

__attribute__((used)) static void or1k_pic_handle_irq(struct pt_regs *regs)
{
 int irq = -1;

 while ((irq = pic_get_irq(irq + 1)) != NO_IRQ)
  handle_domain_irq(root_domain, irq, regs);
}
