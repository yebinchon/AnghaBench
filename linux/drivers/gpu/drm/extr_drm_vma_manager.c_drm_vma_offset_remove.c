
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_vma_offset_node {int vm_node; } ;
struct drm_vma_offset_manager {int vm_lock; } ;


 scalar_t__ drm_mm_node_allocated (int *) ;
 int drm_mm_remove_node (int *) ;
 int memset (int *,int ,int) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

void drm_vma_offset_remove(struct drm_vma_offset_manager *mgr,
      struct drm_vma_offset_node *node)
{
 write_lock(&mgr->vm_lock);

 if (drm_mm_node_allocated(&node->vm_node)) {
  drm_mm_remove_node(&node->vm_node);
  memset(&node->vm_node, 0, sizeof(node->vm_node));
 }

 write_unlock(&mgr->vm_lock);
}
