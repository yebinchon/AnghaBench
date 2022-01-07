
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {struct drm_gem_object* vm_private_data; } ;
struct file {int dummy; } ;
struct drm_gem_object {int dma_buf; scalar_t__ import_attach; } ;


 int DRM_ERROR (char*) ;
 int dma_buf_mmap (int ,struct vm_area_struct*,int ) ;
 int drm_gem_mmap (struct file*,struct vm_area_struct*) ;
 int exynos_drm_gem_mmap_obj (struct drm_gem_object*,struct vm_area_struct*) ;

int exynos_drm_gem_mmap(struct file *filp, struct vm_area_struct *vma)
{
 struct drm_gem_object *obj;
 int ret;


 ret = drm_gem_mmap(filp, vma);
 if (ret < 0) {
  DRM_ERROR("failed to mmap.\n");
  return ret;
 }

 obj = vma->vm_private_data;

 if (obj->import_attach)
  return dma_buf_mmap(obj->dma_buf, vma, 0);

 return exynos_drm_gem_mmap_obj(obj, vma);
}
