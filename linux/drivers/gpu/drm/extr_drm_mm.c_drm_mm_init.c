
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_2__ {int allocated; scalar_t__ size; scalar_t__ start; struct drm_mm* mm; int node_list; } ;
struct drm_mm {scalar_t__ scan_active; TYPE_1__ head_node; int holes_addr; void* holes_size; void* interval_tree; int hole_stack; int * color_adjust; } ;


 int DRM_MM_BUG_ON (int) ;
 int INIT_LIST_HEAD (int *) ;
 int RB_ROOT ;
 void* RB_ROOT_CACHED ;
 int add_hole (TYPE_1__*) ;

void drm_mm_init(struct drm_mm *mm, u64 start, u64 size)
{
 DRM_MM_BUG_ON(start + size <= start);

 mm->color_adjust = ((void*)0);

 INIT_LIST_HEAD(&mm->hole_stack);
 mm->interval_tree = RB_ROOT_CACHED;
 mm->holes_size = RB_ROOT_CACHED;
 mm->holes_addr = RB_ROOT;


 INIT_LIST_HEAD(&mm->head_node.node_list);
 mm->head_node.allocated = 0;
 mm->head_node.mm = mm;
 mm->head_node.start = start + size;
 mm->head_node.size = -size;
 add_hole(&mm->head_node);

 mm->scan_active = 0;
}
