
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmwgfx_gmrid_man {int gmr_ida; } ;
struct ttm_mem_type_manager {scalar_t__ priv; } ;


 int ida_destroy (int *) ;
 int kfree (struct vmwgfx_gmrid_man*) ;

__attribute__((used)) static int vmw_gmrid_man_takedown(struct ttm_mem_type_manager *man)
{
 struct vmwgfx_gmrid_man *gman =
  (struct vmwgfx_gmrid_man *)man->priv;

 if (gman) {
  ida_destroy(&gman->gmr_ida);
  kfree(gman);
 }
 return 0;
}
