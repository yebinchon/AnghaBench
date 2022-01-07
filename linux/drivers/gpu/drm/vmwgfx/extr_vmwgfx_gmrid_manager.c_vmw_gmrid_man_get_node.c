
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmwgfx_gmrid_man {scalar_t__ max_gmr_pages; scalar_t__ used_gmr_pages; int gmr_ida; int lock; scalar_t__ max_gmr_ids; } ;
struct ttm_place {int dummy; } ;
struct ttm_mem_type_manager {scalar_t__ priv; } ;
struct ttm_mem_reg {int start; scalar_t__ num_pages; struct vmwgfx_gmrid_man* mm_node; } ;
struct ttm_buffer_object {scalar_t__ num_pages; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int ida_alloc_max (int *,scalar_t__,int ) ;
 int ida_free (int *,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int vmw_gmrid_man_get_node(struct ttm_mem_type_manager *man,
      struct ttm_buffer_object *bo,
      const struct ttm_place *place,
      struct ttm_mem_reg *mem)
{
 struct vmwgfx_gmrid_man *gman =
  (struct vmwgfx_gmrid_man *)man->priv;
 int id;

 mem->mm_node = ((void*)0);

 id = ida_alloc_max(&gman->gmr_ida, gman->max_gmr_ids - 1, GFP_KERNEL);
 if (id < 0)
  return (id != -ENOMEM ? 0 : id);

 spin_lock(&gman->lock);

 if (gman->max_gmr_pages > 0) {
  gman->used_gmr_pages += bo->num_pages;
  if (unlikely(gman->used_gmr_pages > gman->max_gmr_pages))
   goto nospace;
 }

 mem->mm_node = gman;
 mem->start = id;
 mem->num_pages = bo->num_pages;

 spin_unlock(&gman->lock);
 return 0;

nospace:
 gman->used_gmr_pages -= bo->num_pages;
 spin_unlock(&gman->lock);
 ida_free(&gman->gmr_ida, id);
 return 0;
}
