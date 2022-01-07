
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zx_dma_dev {scalar_t__ base; } ;


 scalar_t__ REG_ZX_CFG_ERR_IRQ_RAW ;
 scalar_t__ REG_ZX_DMA_ARB ;
 scalar_t__ REG_ZX_DST_ERR_IRQ_RAW ;
 scalar_t__ REG_ZX_SRC_ERR_IRQ_RAW ;
 scalar_t__ REG_ZX_TC_IRQ_RAW ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void zx_dma_init_state(struct zx_dma_dev *d)
{

 writel_relaxed(0x0, d->base + REG_ZX_DMA_ARB);

 writel_relaxed(0xffffffff, d->base + REG_ZX_TC_IRQ_RAW);
 writel_relaxed(0xffffffff, d->base + REG_ZX_SRC_ERR_IRQ_RAW);
 writel_relaxed(0xffffffff, d->base + REG_ZX_DST_ERR_IRQ_RAW);
 writel_relaxed(0xffffffff, d->base + REG_ZX_CFG_ERR_IRQ_RAW);
}
