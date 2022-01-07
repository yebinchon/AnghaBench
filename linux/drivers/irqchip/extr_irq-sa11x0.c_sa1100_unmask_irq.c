
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct irq_data {int hwirq; } ;


 int BIT (int ) ;
 scalar_t__ ICMR ;
 scalar_t__ iobase ;
 int readl_relaxed (scalar_t__) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void sa1100_unmask_irq(struct irq_data *d)
{
 u32 reg;

 reg = readl_relaxed(iobase + ICMR);
 reg |= BIT(d->hwirq);
 writel_relaxed(reg, iobase + ICMR);
}
