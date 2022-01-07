
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_mm_node {int size; int start; int color; } ;
struct TYPE_2__ {int size; int start; int color; scalar_t__ allocated; } ;


 int drm_mm_hole_follows (struct drm_mm_node const*) ;
 TYPE_1__* list_next_entry (struct drm_mm_node const*,int ) ;
 int node_list ;
 int pr_err (char*,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static bool colors_abutt(const struct drm_mm_node *node)
{
 if (!drm_mm_hole_follows(node) &&
     list_next_entry(node, node_list)->allocated) {
  pr_err("colors abutt; %ld [%llx + %llx] is next to %ld [%llx + %llx]!\n",
         node->color, node->start, node->size,
         list_next_entry(node, node_list)->color,
         list_next_entry(node, node_list)->start,
         list_next_entry(node, node_list)->size);
  return 1;
 }

 return 0;
}
