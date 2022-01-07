
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct rb_root_cached {int dummy; } ;
struct drm_mm_node {int dummy; } ;
struct drm_mm {int head_node; int interval_tree; } ;


 scalar_t__ drm_mm_interval_tree_iter_first (struct rb_root_cached*,int ,int ) ;

struct drm_mm_node *
__drm_mm_interval_first(const struct drm_mm *mm, u64 start, u64 last)
{
 return drm_mm_interval_tree_iter_first((struct rb_root_cached *)&mm->interval_tree,
            start, last) ?: (struct drm_mm_node *)&mm->head_node;
}
