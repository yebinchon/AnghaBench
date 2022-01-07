
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_vma_offset_manager {int vm_addr_space_mm; int vm_lock; } ;


 int drm_mm_init (int *,unsigned long,unsigned long) ;
 int rwlock_init (int *) ;

void drm_vma_offset_manager_init(struct drm_vma_offset_manager *mgr,
     unsigned long page_offset, unsigned long size)
{
 rwlock_init(&mgr->vm_lock);
 drm_mm_init(&mgr->vm_addr_space_mm, page_offset, size);
}
