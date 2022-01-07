
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sg_table {int dummy; } ;
struct msm_gem_object {int pages; } ;
struct drm_gem_object {int size; } ;


 int PAGE_SHIFT ;
 scalar_t__ WARN_ON (int) ;
 struct sg_table* drm_prime_pages_to_sg (int ,int) ;
 struct msm_gem_object* to_msm_bo (struct drm_gem_object*) ;

struct sg_table *msm_gem_prime_get_sg_table(struct drm_gem_object *obj)
{
 struct msm_gem_object *msm_obj = to_msm_bo(obj);
 int npages = obj->size >> PAGE_SHIFT;

 if (WARN_ON(!msm_obj->pages))
  return ((void*)0);

 return drm_prime_pages_to_sg(msm_obj->pages, npages);
}
