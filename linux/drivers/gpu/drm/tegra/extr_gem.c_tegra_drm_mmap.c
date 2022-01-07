
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {struct drm_gem_object* vm_private_data; } ;
struct file {int dummy; } ;
struct drm_gem_object {int dummy; } ;


 int __tegra_gem_mmap (struct drm_gem_object*,struct vm_area_struct*) ;
 int drm_gem_mmap (struct file*,struct vm_area_struct*) ;

int tegra_drm_mmap(struct file *file, struct vm_area_struct *vma)
{
 struct drm_gem_object *gem;
 int err;

 err = drm_gem_mmap(file, vma);
 if (err < 0)
  return err;

 gem = vma->vm_private_data;

 return __tegra_gem_mmap(gem, vma);
}
