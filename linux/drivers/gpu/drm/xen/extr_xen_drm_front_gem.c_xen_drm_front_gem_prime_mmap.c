
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xen_gem_object {int dummy; } ;
struct vm_area_struct {int dummy; } ;
struct drm_gem_object {int size; } ;


 int drm_gem_mmap_obj (struct drm_gem_object*,int ,struct vm_area_struct*) ;
 int gem_mmap_obj (struct xen_gem_object*,struct vm_area_struct*) ;
 struct xen_gem_object* to_xen_gem_obj (struct drm_gem_object*) ;

int xen_drm_front_gem_prime_mmap(struct drm_gem_object *gem_obj,
     struct vm_area_struct *vma)
{
 struct xen_gem_object *xen_obj;
 int ret;

 ret = drm_gem_mmap_obj(gem_obj, gem_obj->size, vma);
 if (ret < 0)
  return ret;

 xen_obj = to_xen_gem_obj(gem_obj);
 return gem_mmap_obj(xen_obj, vma);
}
