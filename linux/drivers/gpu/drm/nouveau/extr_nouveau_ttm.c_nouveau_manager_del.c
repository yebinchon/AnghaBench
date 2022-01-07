
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_mem_type_manager {int dummy; } ;
struct ttm_mem_reg {int dummy; } ;


 int nouveau_mem_del (struct ttm_mem_reg*) ;

__attribute__((used)) static void
nouveau_manager_del(struct ttm_mem_type_manager *man, struct ttm_mem_reg *reg)
{
 nouveau_mem_del(reg);
}
