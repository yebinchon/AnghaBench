
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct owl_dma_lli {int phys; int node; } ;
struct owl_dma {int lli_pool; } ;


 int dma_pool_free (int ,struct owl_dma_lli*,int ) ;
 int list_del (int *) ;

__attribute__((used)) static void owl_dma_free_lli(struct owl_dma *od,
        struct owl_dma_lli *lli)
{
 list_del(&lli->node);
 dma_pool_free(od->lli_pool, lli, lli->phys);
}
