
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_gem_object {int dummy; } ;


 void* etnaviv_gem_vmap (struct drm_gem_object*) ;

void *etnaviv_gem_prime_vmap(struct drm_gem_object *obj)
{
 return etnaviv_gem_vmap(obj);
}
