
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct rb_node {int dummy; } ;
struct TYPE_4__ {struct rb_node* rb_right; struct rb_node* rb_left; } ;
struct drm_mm_node {scalar_t__ hole_size; TYPE_2__ rb_hole_addr; } ;
struct TYPE_3__ {struct rb_node* rb_node; } ;
struct drm_mm {TYPE_1__ holes_addr; } ;


 scalar_t__ __drm_mm_hole_node_start (struct drm_mm_node*) ;
 struct drm_mm_node* rb_hole_addr_to_node (struct rb_node*) ;

__attribute__((used)) static struct drm_mm_node *find_hole(struct drm_mm *mm, u64 addr)
{
 struct rb_node *rb = mm->holes_addr.rb_node;
 struct drm_mm_node *node = ((void*)0);

 while (rb) {
  u64 hole_start;

  node = rb_hole_addr_to_node(rb);
  hole_start = __drm_mm_hole_node_start(node);

  if (addr < hole_start)
   rb = node->rb_hole_addr.rb_left;
  else if (addr > hole_start + node->hole_size)
   rb = node->rb_hole_addr.rb_right;
  else
   break;
 }

 return node;
}
