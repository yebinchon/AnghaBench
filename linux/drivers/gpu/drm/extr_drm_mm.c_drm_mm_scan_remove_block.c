
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_mm_scan {scalar_t__ hit_start; scalar_t__ hit_end; TYPE_1__* mm; } ;
struct drm_mm_node {int scanned_block; scalar_t__ start; scalar_t__ size; int node_list; TYPE_1__* mm; } ;
struct TYPE_2__ {int scan_active; } ;


 int DRM_MM_BUG_ON (int) ;
 int list_add (int *,int *) ;
 scalar_t__ list_next_entry (struct drm_mm_node*,int ) ;
 struct drm_mm_node* list_prev_entry (struct drm_mm_node*,int ) ;
 int node_list ;

bool drm_mm_scan_remove_block(struct drm_mm_scan *scan,
         struct drm_mm_node *node)
{
 struct drm_mm_node *prev_node;

 DRM_MM_BUG_ON(node->mm != scan->mm);
 DRM_MM_BUG_ON(!node->scanned_block);
 node->scanned_block = 0;

 DRM_MM_BUG_ON(!node->mm->scan_active);
 node->mm->scan_active--;
 prev_node = list_prev_entry(node, node_list);
 DRM_MM_BUG_ON(list_next_entry(prev_node, node_list) !=
        list_next_entry(node, node_list));
 list_add(&node->node_list, &prev_node->node_list);

 return (node->start + node->size > scan->hit_start &&
  node->start < scan->hit_end);
}
