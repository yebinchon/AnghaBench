
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int chan; } ;
struct virt_dma_desc {TYPE_1__ tx; } ;
struct virt_dma_chan {struct virt_dma_desc* cyclic; struct virt_dma_desc* vd_terminated; } ;


 struct virt_dma_chan* to_virt_chan (int ) ;
 int vchan_vdesc_fini (struct virt_dma_desc*) ;

__attribute__((used)) static inline void vchan_terminate_vdesc(struct virt_dma_desc *vd)
{
 struct virt_dma_chan *vc = to_virt_chan(vd->tx.chan);


 if (vc->vd_terminated)
  vchan_vdesc_fini(vc->vd_terminated);

 vc->vd_terminated = vd;
 if (vc->cyclic == vd)
  vc->cyclic = ((void*)0);
}
