
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_mm {int dummy; } ;
struct ttm_range_manager {int lock; struct drm_mm mm; } ;
struct ttm_place {unsigned long lpfn; int flags; int fpfn; } ;
struct ttm_mem_type_manager {unsigned long size; scalar_t__ priv; } ;
struct ttm_mem_reg {int start; struct drm_mm_node* mm_node; int page_alignment; int num_pages; } ;
struct ttm_buffer_object {int dummy; } ;
struct drm_mm_node {int start; } ;
typedef enum drm_mm_insert_mode { ____Placeholder_drm_mm_insert_mode } drm_mm_insert_mode ;


 int DRM_MM_INSERT_BEST ;
 int DRM_MM_INSERT_HIGH ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int TTM_PL_FLAG_TOPDOWN ;
 int drm_mm_insert_node_in_range (struct drm_mm*,struct drm_mm_node*,int ,int ,int ,int ,unsigned long,int) ;
 int kfree (struct drm_mm_node*) ;
 struct drm_mm_node* kzalloc (int,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ttm_bo_man_get_node(struct ttm_mem_type_manager *man,
          struct ttm_buffer_object *bo,
          const struct ttm_place *place,
          struct ttm_mem_reg *mem)
{
 struct ttm_range_manager *rman = (struct ttm_range_manager *) man->priv;
 struct drm_mm *mm = &rman->mm;
 struct drm_mm_node *node;
 enum drm_mm_insert_mode mode;
 unsigned long lpfn;
 int ret;

 lpfn = place->lpfn;
 if (!lpfn)
  lpfn = man->size;

 node = kzalloc(sizeof(*node), GFP_KERNEL);
 if (!node)
  return -ENOMEM;

 mode = DRM_MM_INSERT_BEST;
 if (place->flags & TTM_PL_FLAG_TOPDOWN)
  mode = DRM_MM_INSERT_HIGH;

 spin_lock(&rman->lock);
 ret = drm_mm_insert_node_in_range(mm, node,
       mem->num_pages,
       mem->page_alignment, 0,
       place->fpfn, lpfn, mode);
 spin_unlock(&rman->lock);

 if (unlikely(ret)) {
  kfree(node);
 } else {
  mem->mm_node = node;
  mem->start = node->start;
 }

 return 0;
}
