
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xen_gem_object {int num_pages; int pages; } ;
struct drm_gem_object {int dummy; } ;


 int PAGE_KERNEL ;
 int VM_MAP ;
 struct xen_gem_object* to_xen_gem_obj (struct drm_gem_object*) ;
 void* vmap (int ,int ,int ,int ) ;

void *xen_drm_front_gem_prime_vmap(struct drm_gem_object *gem_obj)
{
 struct xen_gem_object *xen_obj = to_xen_gem_obj(gem_obj);

 if (!xen_obj->pages)
  return ((void*)0);


 return vmap(xen_obj->pages, xen_obj->num_pages,
      VM_MAP, PAGE_KERNEL);
}
