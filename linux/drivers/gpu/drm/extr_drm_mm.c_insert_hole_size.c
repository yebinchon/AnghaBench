
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_2__ {struct rb_node* rb_node; } ;
struct rb_root_cached {TYPE_1__ rb_root; } ;
struct rb_node {struct rb_node* rb_right; struct rb_node* rb_left; } ;
struct drm_mm_node {scalar_t__ hole_size; int rb_hole_size; } ;


 int rb_insert_color_cached (int *,struct rb_root_cached*,int) ;
 int rb_link_node (int *,struct rb_node*,struct rb_node**) ;
 scalar_t__ rb_to_hole_size (struct rb_node*) ;

__attribute__((used)) static void insert_hole_size(struct rb_root_cached *root,
        struct drm_mm_node *node)
{
 struct rb_node **link = &root->rb_root.rb_node, *rb = ((void*)0);
 u64 x = node->hole_size;
 bool first = 1;

 while (*link) {
  rb = *link;
  if (x > rb_to_hole_size(rb)) {
   link = &rb->rb_left;
  } else {
   link = &rb->rb_right;
   first = 0;
  }
 }

 rb_link_node(&node->rb_hole_size, rb, link);
 rb_insert_color_cached(&node->rb_hole_size, root, first);
}
