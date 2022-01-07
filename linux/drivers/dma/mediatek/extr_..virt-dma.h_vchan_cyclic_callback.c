
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int chan; } ;
struct virt_dma_desc {TYPE_1__ tx; } ;
struct virt_dma_chan {int task; struct virt_dma_desc* cyclic; } ;


 int tasklet_schedule (int *) ;
 struct virt_dma_chan* to_virt_chan (int ) ;

__attribute__((used)) static inline void vchan_cyclic_callback(struct virt_dma_desc *vd)
{
 struct virt_dma_chan *vc = to_virt_chan(vd->tx.chan);

 vc->cyclic = vd;
 tasklet_schedule(&vc->task);
}
