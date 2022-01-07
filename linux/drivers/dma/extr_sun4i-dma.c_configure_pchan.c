
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4i_dma_promise {int cfg; int len; int dst; int src; int para; } ;
struct sun4i_dma_pchan {scalar_t__ base; scalar_t__ is_dedicated; } ;


 scalar_t__ SUN4I_DDMA_BYTE_COUNT_REG ;
 scalar_t__ SUN4I_DDMA_CFG_REG ;
 scalar_t__ SUN4I_DDMA_DST_ADDR_REG ;
 scalar_t__ SUN4I_DDMA_PARA_REG ;
 scalar_t__ SUN4I_DDMA_SRC_ADDR_REG ;
 scalar_t__ SUN4I_NDMA_BYTE_COUNT_REG ;
 scalar_t__ SUN4I_NDMA_CFG_REG ;
 scalar_t__ SUN4I_NDMA_DST_ADDR_REG ;
 scalar_t__ SUN4I_NDMA_SRC_ADDR_REG ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void configure_pchan(struct sun4i_dma_pchan *pchan,
       struct sun4i_dma_promise *d)
{




 if (pchan->is_dedicated) {
  writel_relaxed(d->src, pchan->base + SUN4I_DDMA_SRC_ADDR_REG);
  writel_relaxed(d->dst, pchan->base + SUN4I_DDMA_DST_ADDR_REG);
  writel_relaxed(d->len, pchan->base + SUN4I_DDMA_BYTE_COUNT_REG);
  writel_relaxed(d->para, pchan->base + SUN4I_DDMA_PARA_REG);
  writel_relaxed(d->cfg, pchan->base + SUN4I_DDMA_CFG_REG);
 } else {
  writel_relaxed(d->src, pchan->base + SUN4I_NDMA_SRC_ADDR_REG);
  writel_relaxed(d->dst, pchan->base + SUN4I_NDMA_DST_ADDR_REG);
  writel_relaxed(d->len, pchan->base + SUN4I_NDMA_BYTE_COUNT_REG);
  writel_relaxed(d->cfg, pchan->base + SUN4I_NDMA_CFG_REG);
 }
}
