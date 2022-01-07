
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int cookie; int chan; } ;
struct virt_dma_desc {int node; TYPE_3__ tx; } ;
struct TYPE_5__ {TYPE_1__* device; } ;
struct virt_dma_chan {int task; int desc_completed; TYPE_2__ chan; } ;
typedef int dma_cookie_t ;
struct TYPE_4__ {int dev; } ;


 int dev_vdbg (int ,char*,struct virt_dma_desc*,int ) ;
 int dma_cookie_complete (TYPE_3__*) ;
 int list_add_tail (int *,int *) ;
 int tasklet_schedule (int *) ;
 struct virt_dma_chan* to_virt_chan (int ) ;

__attribute__((used)) static inline void vchan_cookie_complete(struct virt_dma_desc *vd)
{
 struct virt_dma_chan *vc = to_virt_chan(vd->tx.chan);
 dma_cookie_t cookie;

 cookie = vd->tx.cookie;
 dma_cookie_complete(&vd->tx);
 dev_vdbg(vc->chan.device->dev, "txd %p[%x]: marked complete\n",
   vd, cookie);
 list_add_tail(&vd->node, &vc->desc_completed);

 tasklet_schedule(&vc->task);
}
