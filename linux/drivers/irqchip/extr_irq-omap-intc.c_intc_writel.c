
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ omap_irq_base ;
 int writel_relaxed (scalar_t__,scalar_t__) ;

__attribute__((used)) static void intc_writel(u32 reg, u32 val)
{
 writel_relaxed(val, omap_irq_base + reg);
}
