
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mthca_icm_iter {size_t page_idx; TYPE_1__* chunk; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int * mem; } ;


 int sg_dma_address (int *) ;

__attribute__((used)) static inline dma_addr_t mthca_icm_addr(struct mthca_icm_iter *iter)
{
 return sg_dma_address(&iter->chunk->mem[iter->page_idx]);
}
