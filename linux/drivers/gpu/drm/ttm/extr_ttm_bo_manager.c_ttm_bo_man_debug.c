
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_range_manager {int lock; int mm; } ;
struct ttm_mem_type_manager {scalar_t__ priv; } ;
struct drm_printer {int dummy; } ;


 int drm_mm_print (int *,struct drm_printer*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void ttm_bo_man_debug(struct ttm_mem_type_manager *man,
        struct drm_printer *printer)
{
 struct ttm_range_manager *rman = (struct ttm_range_manager *) man->priv;

 spin_lock(&rman->lock);
 drm_mm_print(&rman->mm, printer);
 spin_unlock(&rman->lock);
}
