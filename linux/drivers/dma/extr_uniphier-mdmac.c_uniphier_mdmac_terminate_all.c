
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virt_dma_chan {int lock; } ;
struct uniphier_mdmac_chan {TYPE_1__* md; } ;
struct dma_chan {int dummy; } ;
struct TYPE_2__ {int vd; } ;


 int LIST_HEAD (int ) ;
 int head ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct uniphier_mdmac_chan* to_uniphier_mdmac_chan (struct virt_dma_chan*) ;
 struct virt_dma_chan* to_virt_chan (struct dma_chan*) ;
 int uniphier_mdmac_abort (struct uniphier_mdmac_chan*) ;
 int vchan_dma_desc_free_list (struct virt_dma_chan*,int *) ;
 int vchan_get_all_descriptors (struct virt_dma_chan*,int *) ;
 int vchan_terminate_vdesc (int *) ;

__attribute__((used)) static int uniphier_mdmac_terminate_all(struct dma_chan *chan)
{
 struct virt_dma_chan *vc = to_virt_chan(chan);
 struct uniphier_mdmac_chan *mc = to_uniphier_mdmac_chan(vc);
 unsigned long flags;
 int ret = 0;
 LIST_HEAD(head);

 spin_lock_irqsave(&vc->lock, flags);

 if (mc->md) {
  vchan_terminate_vdesc(&mc->md->vd);
  mc->md = ((void*)0);
  ret = uniphier_mdmac_abort(mc);
 }
 vchan_get_all_descriptors(vc, &head);

 spin_unlock_irqrestore(&vc->lock, flags);

 vchan_dma_desc_free_list(vc, &head);

 return ret;
}
