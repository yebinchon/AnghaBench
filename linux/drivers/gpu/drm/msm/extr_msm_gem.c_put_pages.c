
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_gem_object {int flags; int * pages; scalar_t__ sgt; } ;
struct drm_gem_object {int dummy; } ;


 int MSM_BO_UNCACHED ;
 int MSM_BO_WC ;
 int drm_gem_put_pages (struct drm_gem_object*,int *,int,int) ;
 int kfree (scalar_t__) ;
 int put_pages_vram (struct drm_gem_object*) ;
 int sg_free_table (scalar_t__) ;
 int sync_for_cpu (struct msm_gem_object*) ;
 struct msm_gem_object* to_msm_bo (struct drm_gem_object*) ;
 scalar_t__ use_pages (struct drm_gem_object*) ;

__attribute__((used)) static void put_pages(struct drm_gem_object *obj)
{
 struct msm_gem_object *msm_obj = to_msm_bo(obj);

 if (msm_obj->pages) {
  if (msm_obj->sgt) {




   if (msm_obj->flags & (MSM_BO_WC|MSM_BO_UNCACHED))
    sync_for_cpu(msm_obj);

   sg_free_table(msm_obj->sgt);
   kfree(msm_obj->sgt);
  }

  if (use_pages(obj))
   drm_gem_put_pages(obj, msm_obj->pages, 1, 0);
  else
   put_pages_vram(obj);

  msm_obj->pages = ((void*)0);
 }
}
