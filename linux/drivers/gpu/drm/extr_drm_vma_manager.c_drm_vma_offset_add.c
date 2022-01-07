
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_vma_offset_node {int vm_node; } ;
struct drm_vma_offset_manager {int vm_lock; int vm_addr_space_mm; } ;


 int drm_mm_insert_node (int *,int *,unsigned long) ;
 int drm_mm_node_allocated (int *) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

int drm_vma_offset_add(struct drm_vma_offset_manager *mgr,
         struct drm_vma_offset_node *node, unsigned long pages)
{
 int ret = 0;

 write_lock(&mgr->vm_lock);

 if (!drm_mm_node_allocated(&node->vm_node))
  ret = drm_mm_insert_node(&mgr->vm_addr_space_mm,
      &node->vm_node, pages);

 write_unlock(&mgr->vm_lock);

 return ret;
}
