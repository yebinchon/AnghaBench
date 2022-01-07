
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct drm_gem_object {int size; } ;
struct drm_gem_cma_object {int dummy; } ;


 int drm_gem_cma_mmap_obj (struct drm_gem_cma_object*,struct vm_area_struct*) ;
 int drm_gem_mmap_obj (struct drm_gem_object*,int ,struct vm_area_struct*) ;
 struct drm_gem_cma_object* to_drm_gem_cma_obj (struct drm_gem_object*) ;

int drm_gem_cma_prime_mmap(struct drm_gem_object *obj,
      struct vm_area_struct *vma)
{
 struct drm_gem_cma_object *cma_obj;
 int ret;

 ret = drm_gem_mmap_obj(obj, obj->size, vma);
 if (ret < 0)
  return ret;

 cma_obj = to_drm_gem_cma_obj(obj);
 return drm_gem_cma_mmap_obj(cma_obj, vma);
}
