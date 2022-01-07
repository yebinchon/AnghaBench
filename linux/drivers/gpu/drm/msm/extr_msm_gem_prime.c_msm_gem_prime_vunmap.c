
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_gem_object {int dummy; } ;


 int msm_gem_put_vaddr (struct drm_gem_object*) ;

void msm_gem_prime_vunmap(struct drm_gem_object *obj, void *vaddr)
{
 msm_gem_put_vaddr(obj);
}
