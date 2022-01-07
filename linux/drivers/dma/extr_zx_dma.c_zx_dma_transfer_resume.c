
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct zx_dma_chan {TYPE_1__* phy; } ;
struct dma_chan {int dummy; } ;
struct TYPE_2__ {scalar_t__ base; } ;


 scalar_t__ REG_ZX_CTRL ;
 int ZX_CH_ENABLE ;
 int readl_relaxed (scalar_t__) ;
 struct zx_dma_chan* to_zx_chan (struct dma_chan*) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static int zx_dma_transfer_resume(struct dma_chan *chan)
{
 struct zx_dma_chan *c = to_zx_chan(chan);
 u32 val = 0;

 val = readl_relaxed(c->phy->base + REG_ZX_CTRL);
 val |= ZX_CH_ENABLE;
 writel_relaxed(val, c->phy->base + REG_ZX_CTRL);

 return 0;
}
