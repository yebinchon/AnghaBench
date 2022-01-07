
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct virt_dma_desc {int node; } ;
struct TYPE_4__ {TYPE_1__* device; } ;
struct virt_dma_chan {TYPE_2__ chan; int lock; int desc_submitted; } ;
struct dma_async_tx_descriptor {int chan; } ;
typedef int dma_cookie_t ;
struct TYPE_3__ {int dev; } ;


 int dev_dbg (int ,char*,struct virt_dma_chan*,struct virt_dma_desc*,int ) ;
 int dma_cookie_assign (struct dma_async_tx_descriptor*) ;
 int list_move_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct virt_dma_chan* to_virt_chan (int ) ;
 struct virt_dma_desc* to_virt_desc (struct dma_async_tx_descriptor*) ;

dma_cookie_t vchan_tx_submit(struct dma_async_tx_descriptor *tx)
{
 struct virt_dma_chan *vc = to_virt_chan(tx->chan);
 struct virt_dma_desc *vd = to_virt_desc(tx);
 unsigned long flags;
 dma_cookie_t cookie;

 spin_lock_irqsave(&vc->lock, flags);
 cookie = dma_cookie_assign(tx);

 list_move_tail(&vd->node, &vc->desc_submitted);
 spin_unlock_irqrestore(&vc->lock, flags);

 dev_dbg(vc->chan.device->dev, "vchan %p: txd %p[%x]: submitted\n",
  vc, vd, cookie);

 return cookie;
}
