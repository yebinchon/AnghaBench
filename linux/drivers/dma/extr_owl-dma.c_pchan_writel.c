
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct owl_dma_pchan {scalar_t__ base; } ;


 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static void pchan_writel(struct owl_dma_pchan *pchan, u32 reg, u32 data)
{
 writel(data, pchan->base + reg);
}
