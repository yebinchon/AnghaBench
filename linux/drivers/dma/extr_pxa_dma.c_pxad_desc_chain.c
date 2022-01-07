
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virt_dma_desc {int dummy; } ;
struct pxad_desc_sw {int nb_desc; TYPE_1__** hw_desc; int first; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int ddadr; } ;


 struct pxad_desc_sw* to_pxad_sw_desc (struct virt_dma_desc*) ;

__attribute__((used)) static void pxad_desc_chain(struct virt_dma_desc *vd1,
    struct virt_dma_desc *vd2)
{
 struct pxad_desc_sw *desc1 = to_pxad_sw_desc(vd1);
 struct pxad_desc_sw *desc2 = to_pxad_sw_desc(vd2);
 dma_addr_t dma_to_chain;

 dma_to_chain = desc2->first;
 desc1->hw_desc[desc1->nb_desc - 1]->ddadr = dma_to_chain;
}
