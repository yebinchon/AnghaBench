
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; } ;
struct rockchip_gem_object {scalar_t__ pages; } ;
struct drm_gem_object {int dummy; } ;


 int VM_PFNMAP ;
 int drm_gem_vm_close (struct vm_area_struct*) ;
 int rockchip_drm_gem_object_mmap_dma (struct drm_gem_object*,struct vm_area_struct*) ;
 int rockchip_drm_gem_object_mmap_iommu (struct drm_gem_object*,struct vm_area_struct*) ;
 struct rockchip_gem_object* to_rockchip_obj (struct drm_gem_object*) ;

__attribute__((used)) static int rockchip_drm_gem_object_mmap(struct drm_gem_object *obj,
     struct vm_area_struct *vma)
{
 int ret;
 struct rockchip_gem_object *rk_obj = to_rockchip_obj(obj);





 vma->vm_flags &= ~VM_PFNMAP;

 if (rk_obj->pages)
  ret = rockchip_drm_gem_object_mmap_iommu(obj, vma);
 else
  ret = rockchip_drm_gem_object_mmap_dma(obj, vma);

 if (ret)
  drm_gem_vm_close(vma);

 return ret;
}
