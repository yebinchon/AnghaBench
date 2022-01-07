
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_tt {int dummy; } ;
struct nouveau_sgdma_be {int ttm; } ;


 int kfree (struct nouveau_sgdma_be*) ;
 int ttm_dma_tt_fini (int *) ;

__attribute__((used)) static void
nouveau_sgdma_destroy(struct ttm_tt *ttm)
{
 struct nouveau_sgdma_be *nvbe = (struct nouveau_sgdma_be *)ttm;

 if (ttm) {
  ttm_dma_tt_fini(&nvbe->ttm);
  kfree(nvbe);
 }
}
