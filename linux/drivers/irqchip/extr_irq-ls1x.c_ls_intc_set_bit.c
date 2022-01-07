
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct irq_chip_generic {scalar_t__ reg_base; } ;


 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void ls_intc_set_bit(struct irq_chip_generic *gc,
       unsigned int offset,
       u32 mask, bool set)
{
 if (set)
  writel(readl(gc->reg_base + offset) | mask,
  gc->reg_base + offset);
 else
  writel(readl(gc->reg_base + offset) & ~mask,
  gc->reg_base + offset);
}
