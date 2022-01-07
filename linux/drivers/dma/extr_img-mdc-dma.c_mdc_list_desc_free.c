
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mdc_tx_desc {int list_phys; struct mdc_hw_list_desc* list; TYPE_1__* chan; } ;
struct mdc_hw_list_desc {int node_addr; struct mdc_hw_list_desc* next_desc; } ;
struct mdc_dma {int desc_pool; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {struct mdc_dma* mdma; } ;


 int dma_pool_free (int ,struct mdc_hw_list_desc*,int ) ;

__attribute__((used)) static void mdc_list_desc_free(struct mdc_tx_desc *mdesc)
{
 struct mdc_dma *mdma = mdesc->chan->mdma;
 struct mdc_hw_list_desc *curr, *next;
 dma_addr_t curr_phys, next_phys;

 curr = mdesc->list;
 curr_phys = mdesc->list_phys;
 while (curr) {
  next = curr->next_desc;
  next_phys = curr->node_addr;
  dma_pool_free(mdma->desc_pool, curr, curr_phys);
  curr = next;
  curr_phys = next_phys;
 }
}
