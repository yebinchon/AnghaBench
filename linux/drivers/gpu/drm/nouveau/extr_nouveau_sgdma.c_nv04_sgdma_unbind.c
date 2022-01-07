
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_tt {int dummy; } ;
struct nouveau_sgdma_be {int mem; } ;


 int nouveau_mem_fini (int ) ;

__attribute__((used)) static int
nv04_sgdma_unbind(struct ttm_tt *ttm)
{
 struct nouveau_sgdma_be *nvbe = (struct nouveau_sgdma_be *)ttm;
 nouveau_mem_fini(nvbe->mem);
 return 0;
}
