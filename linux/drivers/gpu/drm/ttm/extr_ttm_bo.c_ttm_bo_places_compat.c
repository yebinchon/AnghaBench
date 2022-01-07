
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ttm_place {scalar_t__ fpfn; scalar_t__ lpfn; int flags; } ;
struct ttm_mem_reg {scalar_t__ start; scalar_t__ num_pages; int placement; scalar_t__ mm_node; } ;


 int TTM_PL_FLAG_CONTIGUOUS ;
 int TTM_PL_MASK_CACHING ;
 int TTM_PL_MASK_MEM ;

__attribute__((used)) static bool ttm_bo_places_compat(const struct ttm_place *places,
     unsigned num_placement,
     struct ttm_mem_reg *mem,
     uint32_t *new_flags)
{
 unsigned i;

 for (i = 0; i < num_placement; i++) {
  const struct ttm_place *heap = &places[i];

  if (mem->mm_node && (mem->start < heap->fpfn ||
       (heap->lpfn != 0 && (mem->start + mem->num_pages) > heap->lpfn)))
   continue;

  *new_flags = heap->flags;
  if ((*new_flags & mem->placement & TTM_PL_MASK_CACHING) &&
      (*new_flags & mem->placement & TTM_PL_MASK_MEM) &&
      (!(*new_flags & TTM_PL_FLAG_CONTIGUOUS) ||
       (mem->placement & TTM_PL_FLAG_CONTIGUOUS)))
   return 1;
 }
 return 0;
}
