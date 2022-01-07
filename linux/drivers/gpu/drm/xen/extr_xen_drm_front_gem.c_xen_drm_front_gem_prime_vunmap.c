
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_gem_object {int dummy; } ;


 int vunmap (void*) ;

void xen_drm_front_gem_prime_vunmap(struct drm_gem_object *gem_obj,
        void *vaddr)
{
 vunmap(vaddr);
}
