
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {struct drm_gem_object* vm_private_data; } ;
struct file {int dummy; } ;
struct drm_gem_object {int dummy; } ;
struct drm_gem_cma_object {int dummy; } ;


 int drm_gem_cma_mmap_obj (struct drm_gem_cma_object*,struct vm_area_struct*) ;
 int drm_gem_mmap (struct file*,struct vm_area_struct*) ;
 struct drm_gem_cma_object* to_drm_gem_cma_obj (struct drm_gem_object*) ;

int drm_gem_cma_mmap(struct file *filp, struct vm_area_struct *vma)
{
 struct drm_gem_cma_object *cma_obj;
 struct drm_gem_object *gem_obj;
 int ret;

 ret = drm_gem_mmap(filp, vma);
 if (ret)
  return ret;

 gem_obj = vma->vm_private_data;
 cma_obj = to_drm_gem_cma_obj(gem_obj);

 return drm_gem_cma_mmap_obj(cma_obj, vma);
}
