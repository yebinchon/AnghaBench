
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmwgfx_gmrid_man {int lock; int used_gmr_pages; int gmr_ida; } ;
struct ttm_mem_type_manager {scalar_t__ priv; } ;
struct ttm_mem_reg {int * mm_node; scalar_t__ num_pages; int start; } ;


 int ida_free (int *,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void vmw_gmrid_man_put_node(struct ttm_mem_type_manager *man,
       struct ttm_mem_reg *mem)
{
 struct vmwgfx_gmrid_man *gman =
  (struct vmwgfx_gmrid_man *)man->priv;

 if (mem->mm_node) {
  ida_free(&gman->gmr_ida, mem->start);
  spin_lock(&gman->lock);
  gman->used_gmr_pages -= mem->num_pages;
  spin_unlock(&gman->lock);
  mem->mm_node = ((void*)0);
 }
}
