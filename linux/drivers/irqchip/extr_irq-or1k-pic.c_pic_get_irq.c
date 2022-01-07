
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NO_IRQ ;
 int SPR_PICSR ;
 int ffs (int) ;
 int mfspr (int ) ;

__attribute__((used)) static inline int pic_get_irq(int first)
{
 int hwirq;

 hwirq = ffs(mfspr(SPR_PICSR) >> first);
 if (!hwirq)
  return NO_IRQ;
 else
  hwirq = hwirq + first - 1;

 return hwirq;
}
