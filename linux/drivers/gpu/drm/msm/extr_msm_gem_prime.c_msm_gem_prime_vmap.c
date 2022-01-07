
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_gem_object {int dummy; } ;


 void* msm_gem_get_vaddr (struct drm_gem_object*) ;

void *msm_gem_prime_vmap(struct drm_gem_object *obj)
{
 return msm_gem_get_vaddr(obj);
}
