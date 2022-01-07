
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int device; } ;
struct at_dma_chan {int mask; TYPE_1__ chan_common; } ;
struct at_dma {int dummy; } ;


 int CHSR ;
 int dma_readl (struct at_dma*,int ) ;
 struct at_dma* to_at_dma (int ) ;

__attribute__((used)) static inline int atc_chan_is_enabled(struct at_dma_chan *atchan)
{
 struct at_dma *atdma = to_at_dma(atchan->chan_common.device);

 return !!(dma_readl(atdma, CHSR) & atchan->mask);
}
