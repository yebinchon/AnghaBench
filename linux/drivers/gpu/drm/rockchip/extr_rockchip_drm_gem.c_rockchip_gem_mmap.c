
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {struct drm_gem_object* vm_private_data; scalar_t__ vm_pgoff; } ;
struct file {int dummy; } ;
struct drm_gem_object {int dummy; } ;


 int drm_gem_mmap (struct file*,struct vm_area_struct*) ;
 int rockchip_drm_gem_object_mmap (struct drm_gem_object*,struct vm_area_struct*) ;

int rockchip_gem_mmap(struct file *filp, struct vm_area_struct *vma)
{
 struct drm_gem_object *obj;
 int ret;

 ret = drm_gem_mmap(filp, vma);
 if (ret)
  return ret;





 vma->vm_pgoff = 0;

 obj = vma->vm_private_data;

 return rockchip_drm_gem_object_mmap(obj, vma);
}
