
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_mm_node {int hole_stack; int rb_hole_addr; int rb_hole_size; } ;
struct drm_mm {int hole_stack; } ;
typedef enum drm_mm_insert_mode { ____Placeholder_drm_mm_insert_mode } drm_mm_insert_mode ;






 int hole_stack ;
 struct drm_mm_node* list_next_entry (struct drm_mm_node*,int ) ;
 struct drm_mm_node* rb_hole_addr_to_node (int ) ;
 struct drm_mm_node* rb_hole_size_to_node (int ) ;
 int rb_next (int *) ;
 int rb_prev (int *) ;

__attribute__((used)) static struct drm_mm_node *
next_hole(struct drm_mm *mm,
   struct drm_mm_node *node,
   enum drm_mm_insert_mode mode)
{
 switch (mode) {
 default:
 case 131:
  return rb_hole_size_to_node(rb_prev(&node->rb_hole_size));

 case 128:
  return rb_hole_addr_to_node(rb_next(&node->rb_hole_addr));

 case 129:
  return rb_hole_addr_to_node(rb_prev(&node->rb_hole_addr));

 case 130:
  node = list_next_entry(node, hole_stack);
  return &node->hole_stack == &mm->hole_stack ? ((void*)0) : node;
 }
}
