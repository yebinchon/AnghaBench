
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct owl_dma_lli {int phys; int node; } ;
struct owl_dma {int lli_pool; } ;
typedef int dma_addr_t ;


 int GFP_NOWAIT ;
 int INIT_LIST_HEAD (int *) ;
 struct owl_dma_lli* dma_pool_alloc (int ,int ,int *) ;

__attribute__((used)) static struct owl_dma_lli *owl_dma_alloc_lli(struct owl_dma *od)
{
 struct owl_dma_lli *lli;
 dma_addr_t phys;

 lli = dma_pool_alloc(od->lli_pool, GFP_NOWAIT, &phys);
 if (!lli)
  return ((void*)0);

 INIT_LIST_HEAD(&lli->node);
 lli->phys = phys;

 return lli;
}
