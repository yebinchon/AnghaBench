
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long base; } ;
struct TYPE_4__ {TYPE_1__ bus; } ;
struct ttm_buffer_object {TYPE_2__ mem; } ;
struct drm_mm_node {unsigned long start; } ;


 unsigned long PAGE_SHIFT ;
 struct drm_mm_node* amdgpu_find_mm_node (TYPE_2__*,unsigned long*) ;

__attribute__((used)) static unsigned long amdgpu_ttm_io_mem_pfn(struct ttm_buffer_object *bo,
        unsigned long page_offset)
{
 struct drm_mm_node *mm;
 unsigned long offset = (page_offset << PAGE_SHIFT);

 mm = amdgpu_find_mm_node(&bo->mem, &offset);
 return (bo->mem.bus.base >> PAGE_SHIFT) + mm->start +
  (offset >> PAGE_SHIFT);
}
