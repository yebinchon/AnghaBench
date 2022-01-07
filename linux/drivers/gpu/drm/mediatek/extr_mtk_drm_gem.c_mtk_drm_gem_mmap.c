
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {scalar_t__ vm_pgoff; struct drm_gem_object* vm_private_data; } ;
struct file {int dummy; } ;
struct drm_gem_object {int dummy; } ;


 int drm_gem_mmap (struct file*,struct vm_area_struct*) ;
 int mtk_drm_gem_object_mmap (struct drm_gem_object*,struct vm_area_struct*) ;

int mtk_drm_gem_mmap(struct file *filp, struct vm_area_struct *vma)
{
 struct drm_gem_object *obj;
 int ret;

 ret = drm_gem_mmap(filp, vma);
 if (ret)
  return ret;

 obj = vma->vm_private_data;





 vma->vm_pgoff = 0;

 return mtk_drm_gem_object_mmap(obj, vma);
}
