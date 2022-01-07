
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct owl_dma_pchan {scalar_t__ base; } ;


 scalar_t__ readl (scalar_t__) ;

__attribute__((used)) static u32 pchan_readl(struct owl_dma_pchan *pchan, u32 reg)
{
 return readl(pchan->base + reg);
}
