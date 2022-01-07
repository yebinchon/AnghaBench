
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virt_dma_desc {int dummy; } ;
struct pxad_desc_sw {int nb_desc; TYPE_1__** hw_desc; int desc_pool; int first; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int ddadr; } ;


 int BUG_ON (int) ;
 int dma_pool_free (int ,TYPE_1__*,int ) ;
 int kfree (struct pxad_desc_sw*) ;
 struct pxad_desc_sw* to_pxad_sw_desc (struct virt_dma_desc*) ;

__attribute__((used)) static void pxad_free_desc(struct virt_dma_desc *vd)
{
 int i;
 dma_addr_t dma;
 struct pxad_desc_sw *sw_desc = to_pxad_sw_desc(vd);

 BUG_ON(sw_desc->nb_desc == 0);
 for (i = sw_desc->nb_desc - 1; i >= 0; i--) {
  if (i > 0)
   dma = sw_desc->hw_desc[i - 1]->ddadr;
  else
   dma = sw_desc->first;
  dma_pool_free(sw_desc->desc_pool,
         sw_desc->hw_desc[i], dma);
 }
 sw_desc->nb_desc = 0;
 kfree(sw_desc);
}
