
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ttm_placement {int dummy; } ;
struct TYPE_2__ {int mem_type; } ;
struct ttm_buffer_object {TYPE_1__ mem; } ;
struct nouveau_bo {struct ttm_placement placement; } ;


 int TTM_PL_FLAG_SYSTEM ;
 int TTM_PL_FLAG_TT ;

 struct nouveau_bo* nouveau_bo (struct ttm_buffer_object*) ;
 int nouveau_bo_placement_set (struct nouveau_bo*,int ,int ) ;

__attribute__((used)) static void
nouveau_bo_evict_flags(struct ttm_buffer_object *bo, struct ttm_placement *pl)
{
 struct nouveau_bo *nvbo = nouveau_bo(bo);

 switch (bo->mem.mem_type) {
 case 128:
  nouveau_bo_placement_set(nvbo, TTM_PL_FLAG_TT,
      TTM_PL_FLAG_SYSTEM);
  break;
 default:
  nouveau_bo_placement_set(nvbo, TTM_PL_FLAG_SYSTEM, 0);
  break;
 }

 *pl = nvbo->placement;
}
