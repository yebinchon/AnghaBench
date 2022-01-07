
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct omap_gem_object {int lock; struct page** pages; } ;
struct drm_gem_object {int dummy; } ;


 int ENOMEM ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int omap_gem_attach_pages (struct drm_gem_object*) ;
 struct omap_gem_object* to_omap_bo (struct drm_gem_object*) ;

int omap_gem_get_pages(struct drm_gem_object *obj, struct page ***pages,
  bool remap)
{
 struct omap_gem_object *omap_obj = to_omap_bo(obj);
 int ret = 0;

 mutex_lock(&omap_obj->lock);

 if (remap) {
  ret = omap_gem_attach_pages(obj);
  if (ret)
   goto unlock;
 }

 if (!omap_obj->pages) {
  ret = -ENOMEM;
  goto unlock;
 }

 *pages = omap_obj->pages;

unlock:
 mutex_unlock(&omap_obj->lock);

 return ret;
}
