
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int chan; } ;
struct virt_dma_desc {int node; TYPE_1__ tx; } ;
struct virt_dma_chan {int (* desc_free ) (struct virt_dma_desc*) ;int desc_allocated; } ;


 scalar_t__ dmaengine_desc_test_reuse (TYPE_1__*) ;
 int list_add (int *,int *) ;
 int stub1 (struct virt_dma_desc*) ;
 struct virt_dma_chan* to_virt_chan (int ) ;

__attribute__((used)) static inline void vchan_vdesc_fini(struct virt_dma_desc *vd)
{
 struct virt_dma_chan *vc = to_virt_chan(vd->tx.chan);

 if (dmaengine_desc_test_reuse(&vd->tx))
  list_add(&vd->node, &vc->desc_allocated);
 else
  vc->desc_free(vd);
}
