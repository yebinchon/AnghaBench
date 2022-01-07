
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ omap_irq_base ;
 scalar_t__ readl_relaxed (scalar_t__) ;

__attribute__((used)) static u32 intc_readl(u32 reg)
{
 return readl_relaxed(omap_irq_base + reg);
}
