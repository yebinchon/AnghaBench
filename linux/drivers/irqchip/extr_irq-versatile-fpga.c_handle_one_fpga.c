
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pt_regs {int dummy; } ;
struct fpga_irq_data {int domain; scalar_t__ base; } ;


 scalar_t__ IRQ_STATUS ;
 int ffs (int ) ;
 int handle_domain_irq (int ,int,struct pt_regs*) ;
 int readl (scalar_t__) ;

__attribute__((used)) static int handle_one_fpga(struct fpga_irq_data *f, struct pt_regs *regs)
{
 int handled = 0;
 int irq;
 u32 status;

 while ((status = readl(f->base + IRQ_STATUS))) {
  irq = ffs(status) - 1;
  handle_domain_irq(f->domain, irq, regs);
  handled = 1;
 }

 return handled;
}
