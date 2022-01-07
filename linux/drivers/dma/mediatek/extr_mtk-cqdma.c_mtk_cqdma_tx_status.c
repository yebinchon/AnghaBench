
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virt_dma_desc {int dummy; } ;
struct mtk_cqdma_vdesc {size_t residue; } ;
struct TYPE_2__ {int lock; } ;
struct mtk_cqdma_vchan {TYPE_1__ vc; } ;
struct dma_tx_state {int dummy; } ;
struct dma_chan {int dummy; } ;
typedef enum dma_status { ____Placeholder_dma_status } dma_status ;
typedef int dma_cookie_t ;


 int DMA_COMPLETE ;
 int dma_cookie_status (struct dma_chan*,int ,struct dma_tx_state*) ;
 int dma_set_residue (struct dma_tx_state*,size_t) ;
 struct virt_dma_desc* mtk_cqdma_find_active_desc (struct dma_chan*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct mtk_cqdma_vchan* to_cqdma_vchan (struct dma_chan*) ;
 struct mtk_cqdma_vdesc* to_cqdma_vdesc (struct virt_dma_desc*) ;

__attribute__((used)) static enum dma_status mtk_cqdma_tx_status(struct dma_chan *c,
        dma_cookie_t cookie,
        struct dma_tx_state *txstate)
{
 struct mtk_cqdma_vchan *cvc = to_cqdma_vchan(c);
 struct mtk_cqdma_vdesc *cvd;
 struct virt_dma_desc *vd;
 enum dma_status ret;
 unsigned long flags;
 size_t bytes = 0;

 ret = dma_cookie_status(c, cookie, txstate);
 if (ret == DMA_COMPLETE || !txstate)
  return ret;

 spin_lock_irqsave(&cvc->vc.lock, flags);
 vd = mtk_cqdma_find_active_desc(c, cookie);
 spin_unlock_irqrestore(&cvc->vc.lock, flags);

 if (vd) {
  cvd = to_cqdma_vdesc(vd);
  bytes = cvd->residue;
 }

 dma_set_residue(txstate, bytes);

 return ret;
}
