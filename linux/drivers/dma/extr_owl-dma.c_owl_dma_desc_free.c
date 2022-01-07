
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* chan; } ;
struct virt_dma_desc {TYPE_2__ tx; } ;
struct owl_dma_txd {int dummy; } ;
struct owl_dma {int dummy; } ;
struct TYPE_3__ {int device; } ;


 int owl_dma_free_txd (struct owl_dma*,struct owl_dma_txd*) ;
 struct owl_dma* to_owl_dma (int ) ;
 struct owl_dma_txd* to_owl_txd (TYPE_2__*) ;

__attribute__((used)) static void owl_dma_desc_free(struct virt_dma_desc *vd)
{
 struct owl_dma *od = to_owl_dma(vd->tx.chan->device);
 struct owl_dma_txd *txd = to_owl_txd(&vd->tx);

 owl_dma_free_txd(od, txd);
}
