
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct msm_gem_object {scalar_t__ madv; int lock; } ;
struct drm_gem_object {int dummy; } ;


 int EBUSY ;
 struct page** ERR_PTR (int ) ;
 scalar_t__ MSM_MADV_WILLNEED ;
 scalar_t__ WARN_ON (int) ;
 struct page** get_pages (struct drm_gem_object*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct msm_gem_object* to_msm_bo (struct drm_gem_object*) ;

struct page **msm_gem_get_pages(struct drm_gem_object *obj)
{
 struct msm_gem_object *msm_obj = to_msm_bo(obj);
 struct page **p;

 mutex_lock(&msm_obj->lock);

 if (WARN_ON(msm_obj->madv != MSM_MADV_WILLNEED)) {
  mutex_unlock(&msm_obj->lock);
  return ERR_PTR(-EBUSY);
 }

 p = get_pages(obj);
 mutex_unlock(&msm_obj->lock);
 return p;
}
