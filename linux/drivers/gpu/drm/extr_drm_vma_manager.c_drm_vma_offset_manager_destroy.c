
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_vma_offset_manager {int vm_addr_space_mm; } ;


 int drm_mm_takedown (int *) ;

void drm_vma_offset_manager_destroy(struct drm_vma_offset_manager *mgr)
{
 drm_mm_takedown(&mgr->vm_addr_space_mm);
}
