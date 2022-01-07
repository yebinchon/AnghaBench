
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_tt {int dummy; } ;
struct ttm_mem_reg {int dummy; } ;
struct nouveau_sgdma_be {struct nouveau_mem* mem; int ttm; } ;
struct nouveau_mem {int dummy; } ;


 struct nouveau_mem* nouveau_mem (struct ttm_mem_reg*) ;
 int nouveau_mem_host (struct ttm_mem_reg*,int *) ;

__attribute__((used)) static int
nv50_sgdma_bind(struct ttm_tt *ttm, struct ttm_mem_reg *reg)
{
 struct nouveau_sgdma_be *nvbe = (struct nouveau_sgdma_be *)ttm;
 struct nouveau_mem *mem = nouveau_mem(reg);
 int ret;

 ret = nouveau_mem_host(reg, &nvbe->ttm);
 if (ret)
  return ret;

 nvbe->mem = mem;
 return 0;
}
