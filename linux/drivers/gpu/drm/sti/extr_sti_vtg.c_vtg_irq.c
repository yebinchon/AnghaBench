
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sti_vtg {scalar_t__ regs; int irq_status; } ;
typedef int irqreturn_t ;


 int IRQ_WAKE_THREAD ;
 scalar_t__ VTG_HOST_ITS ;
 scalar_t__ VTG_HOST_ITS_BCLR ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static irqreturn_t vtg_irq(int irq, void *arg)
{
 struct sti_vtg *vtg = arg;

 vtg->irq_status = readl(vtg->regs + VTG_HOST_ITS);

 writel(vtg->irq_status, vtg->regs + VTG_HOST_ITS_BCLR);


 readl(vtg->regs + VTG_HOST_ITS);

 return IRQ_WAKE_THREAD;
}
