
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ttm_place {scalar_t__ fpfn; scalar_t__ lpfn; } ;
struct TYPE_2__ {scalar_t__ start; scalar_t__ size; } ;
struct ttm_buffer_object {TYPE_1__ mem; } ;



bool ttm_bo_eviction_valuable(struct ttm_buffer_object *bo,
         const struct ttm_place *place)
{



 if (place->fpfn >= (bo->mem.start + bo->mem.size) ||
     (place->lpfn && place->lpfn <= bo->mem.start))
  return 0;

 return 1;
}
