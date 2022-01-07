
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iova_domain {scalar_t__ dma_32bit_pfn; int * cached_node; int * cached32_node; } ;
struct iova {scalar_t__ pfn_hi; int node; } ;



__attribute__((used)) static void
__cached_rbnode_insert_update(struct iova_domain *iovad, struct iova *new)
{
 if (new->pfn_hi < iovad->dma_32bit_pfn)
  iovad->cached32_node = &new->node;
 else
  iovad->cached_node = &new->node;
}
