
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ base; } ;


 int iowrite32 (int ,scalar_t__) ;
 int iowrite32be (int ,scalar_t__) ;
 scalar_t__ static_branch_unlikely (int *) ;
 TYPE_1__* xintc_irqc ;
 int xintc_is_be ;

__attribute__((used)) static void xintc_write(int reg, u32 data)
{
 if (static_branch_unlikely(&xintc_is_be))
  iowrite32be(data, xintc_irqc->base + reg);
 else
  iowrite32(data, xintc_irqc->base + reg);
}
