
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_mem_reg {struct drm_mm_node* mm_node; } ;
struct drm_mm_node {unsigned long size; } ;


 unsigned long PAGE_SHIFT ;

__attribute__((used)) static struct drm_mm_node *amdgpu_find_mm_node(struct ttm_mem_reg *mem,
            unsigned long *offset)
{
 struct drm_mm_node *mm_node = mem->mm_node;

 while (*offset >= (mm_node->size << PAGE_SHIFT)) {
  *offset -= (mm_node->size << PAGE_SHIFT);
  ++mm_node;
 }
 return mm_node;
}
