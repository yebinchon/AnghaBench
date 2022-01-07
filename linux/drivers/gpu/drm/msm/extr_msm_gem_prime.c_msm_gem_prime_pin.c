
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_gem_object {int import_attach; } ;


 int msm_gem_get_pages (struct drm_gem_object*) ;

int msm_gem_prime_pin(struct drm_gem_object *obj)
{
 if (!obj->import_attach)
  msm_gem_get_pages(obj);
 return 0;
}
