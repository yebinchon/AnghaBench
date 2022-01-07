
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sprd_dma_chn {int chn_base; } ;


 int readl (int) ;
 int writel (int,int) ;

__attribute__((used)) static void sprd_dma_chn_update(struct sprd_dma_chn *schan, u32 reg,
    u32 mask, u32 val)
{
 u32 orig = readl(schan->chn_base + reg);
 u32 tmp;

 tmp = (orig & ~mask) | val;
 writel(tmp, schan->chn_base + reg);
}
