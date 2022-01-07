
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct drm_mm_node {scalar_t__ start; scalar_t__ size; scalar_t__ hole_size; int allocated; int node_list; struct drm_mm* mm; int color; } ;
struct drm_mm {int (* color_adjust ) (struct drm_mm_node*,int ,scalar_t__*,scalar_t__*) ;} ;


 int ENOSPC ;
 scalar_t__ __drm_mm_hole_node_start (struct drm_mm_node*) ;
 int add_hole (struct drm_mm_node*) ;
 int drm_mm_interval_tree_add_node (struct drm_mm_node*,struct drm_mm_node*) ;
 struct drm_mm_node* find_hole (struct drm_mm*,scalar_t__) ;
 int list_add (int *,int *) ;
 int rm_hole (struct drm_mm_node*) ;
 int save_stack (struct drm_mm_node*) ;
 int stub1 (struct drm_mm_node*,int ,scalar_t__*,scalar_t__*) ;
 scalar_t__ unlikely (int) ;

int drm_mm_reserve_node(struct drm_mm *mm, struct drm_mm_node *node)
{
 u64 end = node->start + node->size;
 struct drm_mm_node *hole;
 u64 hole_start, hole_end;
 u64 adj_start, adj_end;

 end = node->start + node->size;
 if (unlikely(end <= node->start))
  return -ENOSPC;


 hole = find_hole(mm, node->start);
 if (!hole)
  return -ENOSPC;

 adj_start = hole_start = __drm_mm_hole_node_start(hole);
 adj_end = hole_end = hole_start + hole->hole_size;

 if (mm->color_adjust)
  mm->color_adjust(hole, node->color, &adj_start, &adj_end);

 if (adj_start > node->start || adj_end < end)
  return -ENOSPC;

 node->mm = mm;

 list_add(&node->node_list, &hole->node_list);
 drm_mm_interval_tree_add_node(hole, node);
 node->allocated = 1;
 node->hole_size = 0;

 rm_hole(hole);
 if (node->start > hole_start)
  add_hole(hole);
 if (end < hole_end)
  add_hole(node);

 save_stack(node);
 return 0;
}
