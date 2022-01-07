
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct virt_dma_desc {int dummy; } ;
struct virt_dma_chan {int lock; } ;
struct TYPE_3__ {scalar_t__ cookie; } ;
struct TYPE_4__ {TYPE_1__ tx; } ;
struct uniphier_mdmac_desc {int sg_cur; int sg_len; int * sgl; TYPE_2__ vd; } ;
struct uniphier_mdmac_chan {struct uniphier_mdmac_desc* md; scalar_t__ reg_ch_base; } ;
struct dma_tx_state {int residue; } ;
struct dma_chan {int dummy; } ;
typedef enum dma_status { ____Placeholder_dma_status } dma_status ;
typedef scalar_t__ dma_cookie_t ;


 int DMA_COMPLETE ;
 scalar_t__ UNIPHIER_MDMAC_CH_SIZE ;
 int dma_cookie_status (struct dma_chan*,scalar_t__,struct dma_tx_state*) ;
 int readl (scalar_t__) ;
 scalar_t__ sg_dma_len (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct uniphier_mdmac_chan* to_uniphier_mdmac_chan (struct virt_dma_chan*) ;
 struct uniphier_mdmac_desc* to_uniphier_mdmac_desc (struct virt_dma_desc*) ;
 struct virt_dma_chan* to_virt_chan (struct dma_chan*) ;
 struct virt_dma_desc* vchan_find_desc (struct virt_dma_chan*,scalar_t__) ;

__attribute__((used)) static enum dma_status uniphier_mdmac_tx_status(struct dma_chan *chan,
      dma_cookie_t cookie,
      struct dma_tx_state *txstate)
{
 struct virt_dma_chan *vc;
 struct virt_dma_desc *vd;
 struct uniphier_mdmac_chan *mc;
 struct uniphier_mdmac_desc *md = ((void*)0);
 enum dma_status stat;
 unsigned long flags;
 int i;

 stat = dma_cookie_status(chan, cookie, txstate);

 if (stat == DMA_COMPLETE || !txstate)
  return stat;

 vc = to_virt_chan(chan);

 spin_lock_irqsave(&vc->lock, flags);

 mc = to_uniphier_mdmac_chan(vc);

 if (mc->md && mc->md->vd.tx.cookie == cookie) {

  txstate->residue = readl(mc->reg_ch_base +
      UNIPHIER_MDMAC_CH_SIZE);
  md = mc->md;
 }

 if (!md) {
  vd = vchan_find_desc(vc, cookie);
  if (vd)
   md = to_uniphier_mdmac_desc(vd);
 }

 if (md) {

  for (i = md->sg_cur; i < md->sg_len; i++)
   txstate->residue += sg_dma_len(&md->sgl[i]);
 }

 spin_unlock_irqrestore(&vc->lock, flags);

 return stat;
}
