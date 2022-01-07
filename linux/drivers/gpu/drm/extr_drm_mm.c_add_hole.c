
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_mm_node {int hole_stack; scalar_t__ hole_size; struct drm_mm* mm; } ;
struct drm_mm {int hole_stack; int holes_addr; int holes_size; } ;


 int DRM_MM_BUG_ON (int) ;
 int HOLE_ADDR ;
 int RB_INSERT (int ,int ,int ) ;
 scalar_t__ __drm_mm_hole_node_end (struct drm_mm_node*) ;
 scalar_t__ __drm_mm_hole_node_start (struct drm_mm_node*) ;
 int drm_mm_hole_follows (struct drm_mm_node*) ;
 int insert_hole_size (int *,struct drm_mm_node*) ;
 int list_add (int *,int *) ;
 int rb_hole_addr ;

__attribute__((used)) static void add_hole(struct drm_mm_node *node)
{
 struct drm_mm *mm = node->mm;

 node->hole_size =
  __drm_mm_hole_node_end(node) - __drm_mm_hole_node_start(node);
 DRM_MM_BUG_ON(!drm_mm_hole_follows(node));

 insert_hole_size(&mm->holes_size, node);
 RB_INSERT(mm->holes_addr, rb_hole_addr, HOLE_ADDR);

 list_add(&node->hole_stack, &mm->hole_stack);
}
