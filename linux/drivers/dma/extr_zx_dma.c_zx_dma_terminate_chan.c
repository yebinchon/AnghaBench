
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct zx_dma_phy {int idx; scalar_t__ base; } ;
struct zx_dma_dev {scalar_t__ base; } ;


 scalar_t__ REG_ZX_CFG_ERR_IRQ_RAW ;
 scalar_t__ REG_ZX_CTRL ;
 scalar_t__ REG_ZX_DST_ERR_IRQ_RAW ;
 scalar_t__ REG_ZX_SRC_ERR_IRQ_RAW ;
 scalar_t__ REG_ZX_TC_IRQ_RAW ;
 int ZX_CH_ENABLE ;
 int ZX_FORCE_CLOSE ;
 int readl_relaxed (scalar_t__) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void zx_dma_terminate_chan(struct zx_dma_phy *phy, struct zx_dma_dev *d)
{
 u32 val = 0;

 val = readl_relaxed(phy->base + REG_ZX_CTRL);
 val &= ~ZX_CH_ENABLE;
 val |= ZX_FORCE_CLOSE;
 writel_relaxed(val, phy->base + REG_ZX_CTRL);

 val = 0x1 << phy->idx;
 writel_relaxed(val, d->base + REG_ZX_TC_IRQ_RAW);
 writel_relaxed(val, d->base + REG_ZX_SRC_ERR_IRQ_RAW);
 writel_relaxed(val, d->base + REG_ZX_DST_ERR_IRQ_RAW);
 writel_relaxed(val, d->base + REG_ZX_CFG_ERR_IRQ_RAW);
}
