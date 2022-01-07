
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_mm_node {scalar_t__ hole_size; TYPE_1__* mm; int rb_hole_addr; int rb_hole_size; int hole_stack; } ;
struct TYPE_2__ {int holes_addr; int holes_size; } ;


 int DRM_MM_BUG_ON (int) ;
 int drm_mm_hole_follows (struct drm_mm_node*) ;
 int list_del (int *) ;
 int rb_erase (int *,int *) ;
 int rb_erase_cached (int *,int *) ;

__attribute__((used)) static void rm_hole(struct drm_mm_node *node)
{
 DRM_MM_BUG_ON(!drm_mm_hole_follows(node));

 list_del(&node->hole_stack);
 rb_erase_cached(&node->rb_hole_size, &node->mm->holes_size);
 rb_erase(&node->rb_hole_addr, &node->mm->holes_addr);
 node->hole_size = 0;

 DRM_MM_BUG_ON(drm_mm_hole_follows(node));
}
