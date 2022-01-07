
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p2wi {unsigned long status; int complete; scalar_t__ regs; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ P2WI_INTS ;
 unsigned long P2WI_INTS_LOAD_BSY ;
 unsigned long P2WI_INTS_TRANS_ERR ;
 unsigned long P2WI_INTS_TRANS_OVER ;
 int complete (int *) ;
 unsigned long readl (scalar_t__) ;
 int writel (unsigned long,scalar_t__) ;

__attribute__((used)) static irqreturn_t p2wi_interrupt(int irq, void *dev_id)
{
 struct p2wi *p2wi = dev_id;
 unsigned long status;

 status = readl(p2wi->regs + P2WI_INTS);
 p2wi->status = status;


 status &= (P2WI_INTS_LOAD_BSY | P2WI_INTS_TRANS_ERR |
     P2WI_INTS_TRANS_OVER);
 writel(status, p2wi->regs + P2WI_INTS);

 complete(&p2wi->complete);

 return IRQ_HANDLED;
}
