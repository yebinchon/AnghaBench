
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_mm_node {int allocated; int rb_hole_addr; int rb_hole_size; int hole_stack; int rb; int node_list; struct drm_mm* mm; } ;
struct drm_mm {int holes_addr; int holes_size; int interval_tree; } ;


 int DRM_MM_BUG_ON (int) ;
 scalar_t__ drm_mm_hole_follows (struct drm_mm_node*) ;
 int list_replace (int *,int *) ;
 int rb_replace_node (int *,int *,int *) ;
 int rb_replace_node_cached (int *,int *,int *) ;

void drm_mm_replace_node(struct drm_mm_node *old, struct drm_mm_node *new)
{
 struct drm_mm *mm = old->mm;

 DRM_MM_BUG_ON(!old->allocated);

 *new = *old;

 list_replace(&old->node_list, &new->node_list);
 rb_replace_node_cached(&old->rb, &new->rb, &mm->interval_tree);

 if (drm_mm_hole_follows(old)) {
  list_replace(&old->hole_stack, &new->hole_stack);
  rb_replace_node_cached(&old->rb_hole_size,
           &new->rb_hole_size,
           &mm->holes_size);
  rb_replace_node(&old->rb_hole_addr,
    &new->rb_hole_addr,
    &mm->holes_addr);
 }

 old->allocated = 0;
 new->allocated = 1;
}
