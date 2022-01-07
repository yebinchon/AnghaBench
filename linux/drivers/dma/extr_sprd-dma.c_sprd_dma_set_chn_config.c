
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sprd_dma_chn_hw {int req; int des_blk_step; int src_blk_step; int frg_step; int llist_ptr; int wrap_to; int wrap_ptr; int trsf_step; int trsc_len; int blk_len; int frg_len; int des_addr; int src_addr; int intc; int cfg; int pause; } ;
struct sprd_dma_desc {struct sprd_dma_chn_hw chn_hw; } ;
struct sprd_dma_chn {scalar_t__ chn_base; } ;


 scalar_t__ SPRD_DMA_CHN_BLK_LEN ;
 scalar_t__ SPRD_DMA_CHN_CFG ;
 scalar_t__ SPRD_DMA_CHN_DES_ADDR ;
 scalar_t__ SPRD_DMA_CHN_DES_BLK_STEP ;
 scalar_t__ SPRD_DMA_CHN_FRAG_STEP ;
 scalar_t__ SPRD_DMA_CHN_FRG_LEN ;
 scalar_t__ SPRD_DMA_CHN_INTC ;
 scalar_t__ SPRD_DMA_CHN_LLIST_PTR ;
 scalar_t__ SPRD_DMA_CHN_PAUSE ;
 scalar_t__ SPRD_DMA_CHN_REQ ;
 scalar_t__ SPRD_DMA_CHN_SRC_ADDR ;
 scalar_t__ SPRD_DMA_CHN_SRC_BLK_STEP ;
 scalar_t__ SPRD_DMA_CHN_TRSC_LEN ;
 scalar_t__ SPRD_DMA_CHN_TRSF_STEP ;
 scalar_t__ SPRD_DMA_CHN_WARP_PTR ;
 scalar_t__ SPRD_DMA_CHN_WARP_TO ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void sprd_dma_set_chn_config(struct sprd_dma_chn *schan,
        struct sprd_dma_desc *sdesc)
{
 struct sprd_dma_chn_hw *cfg = &sdesc->chn_hw;

 writel(cfg->pause, schan->chn_base + SPRD_DMA_CHN_PAUSE);
 writel(cfg->cfg, schan->chn_base + SPRD_DMA_CHN_CFG);
 writel(cfg->intc, schan->chn_base + SPRD_DMA_CHN_INTC);
 writel(cfg->src_addr, schan->chn_base + SPRD_DMA_CHN_SRC_ADDR);
 writel(cfg->des_addr, schan->chn_base + SPRD_DMA_CHN_DES_ADDR);
 writel(cfg->frg_len, schan->chn_base + SPRD_DMA_CHN_FRG_LEN);
 writel(cfg->blk_len, schan->chn_base + SPRD_DMA_CHN_BLK_LEN);
 writel(cfg->trsc_len, schan->chn_base + SPRD_DMA_CHN_TRSC_LEN);
 writel(cfg->trsf_step, schan->chn_base + SPRD_DMA_CHN_TRSF_STEP);
 writel(cfg->wrap_ptr, schan->chn_base + SPRD_DMA_CHN_WARP_PTR);
 writel(cfg->wrap_to, schan->chn_base + SPRD_DMA_CHN_WARP_TO);
 writel(cfg->llist_ptr, schan->chn_base + SPRD_DMA_CHN_LLIST_PTR);
 writel(cfg->frg_step, schan->chn_base + SPRD_DMA_CHN_FRAG_STEP);
 writel(cfg->src_blk_step, schan->chn_base + SPRD_DMA_CHN_SRC_BLK_STEP);
 writel(cfg->des_blk_step, schan->chn_base + SPRD_DMA_CHN_DES_BLK_STEP);
 writel(cfg->req, schan->chn_base + SPRD_DMA_CHN_REQ);
}
