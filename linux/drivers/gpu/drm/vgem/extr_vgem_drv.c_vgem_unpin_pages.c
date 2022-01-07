
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_vgem_gem_object {scalar_t__ pages_pin_count; int pages_lock; int * pages; int base; } ;


 int drm_gem_put_pages (int *,int *,int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void vgem_unpin_pages(struct drm_vgem_gem_object *bo)
{
 mutex_lock(&bo->pages_lock);
 if (--bo->pages_pin_count == 0) {
  drm_gem_put_pages(&bo->base, bo->pages, 1, 1);
  bo->pages = ((void*)0);
 }
 mutex_unlock(&bo->pages_lock);
}
