
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_mm_node {int allocated; int scanned_block; int node_list; struct drm_mm* mm; } ;
struct drm_mm {int interval_tree; } ;


 int DRM_MM_BUG_ON (int) ;
 int add_hole (struct drm_mm_node*) ;
 scalar_t__ drm_mm_hole_follows (struct drm_mm_node*) ;
 int drm_mm_interval_tree_remove (struct drm_mm_node*,int *) ;
 int list_del (int *) ;
 struct drm_mm_node* list_prev_entry (struct drm_mm_node*,int ) ;
 int node_list ;
 int rm_hole (struct drm_mm_node*) ;

void drm_mm_remove_node(struct drm_mm_node *node)
{
 struct drm_mm *mm = node->mm;
 struct drm_mm_node *prev_node;

 DRM_MM_BUG_ON(!node->allocated);
 DRM_MM_BUG_ON(node->scanned_block);

 prev_node = list_prev_entry(node, node_list);

 if (drm_mm_hole_follows(node))
  rm_hole(node);

 drm_mm_interval_tree_remove(node, &mm->interval_tree);
 list_del(&node->node_list);
 node->allocated = 0;

 if (drm_mm_hole_follows(prev_node))
  rm_hole(prev_node);
 add_hole(prev_node);
}
