
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct owl_dma_pchan {scalar_t__ base; } ;


 scalar_t__ readl (scalar_t__) ;
 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static void pchan_update(struct owl_dma_pchan *pchan, u32 reg,
    u32 val, bool state)
{
 u32 regval;

 regval = readl(pchan->base + reg);

 if (state)
  regval |= val;
 else
  regval &= ~val;

 writel(val, pchan->base + reg);
}
