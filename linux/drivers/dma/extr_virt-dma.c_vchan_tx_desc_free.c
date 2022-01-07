
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int cookie; } ;
struct virt_dma_desc {TYPE_3__ tx; int node; } ;
struct TYPE_5__ {TYPE_1__* device; } ;
struct virt_dma_chan {int (* desc_free ) (struct virt_dma_desc*) ;TYPE_2__ chan; int lock; } ;
struct dma_async_tx_descriptor {int chan; } ;
struct TYPE_4__ {int dev; } ;


 int dev_dbg (int ,char*,struct virt_dma_chan*,struct virt_dma_desc*,int ) ;
 int list_del (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct virt_dma_desc*) ;
 struct virt_dma_chan* to_virt_chan (int ) ;
 struct virt_dma_desc* to_virt_desc (struct dma_async_tx_descriptor*) ;

int vchan_tx_desc_free(struct dma_async_tx_descriptor *tx)
{
 struct virt_dma_chan *vc = to_virt_chan(tx->chan);
 struct virt_dma_desc *vd = to_virt_desc(tx);
 unsigned long flags;

 spin_lock_irqsave(&vc->lock, flags);
 list_del(&vd->node);
 spin_unlock_irqrestore(&vc->lock, flags);

 dev_dbg(vc->chan.device->dev, "vchan %p: txd %p[%x]: freeing\n",
  vc, vd, vd->tx.cookie);
 vc->desc_free(vd);
 return 0;
}
