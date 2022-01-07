
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ base; } ;


 unsigned int ioread32 (scalar_t__) ;
 unsigned int ioread32be (scalar_t__) ;
 scalar_t__ static_branch_unlikely (int *) ;
 TYPE_1__* xintc_irqc ;
 int xintc_is_be ;

__attribute__((used)) static unsigned int xintc_read(int reg)
{
 if (static_branch_unlikely(&xintc_is_be))
  return ioread32be(xintc_irqc->base + reg);
 else
  return ioread32(xintc_irqc->base + reg);
}
