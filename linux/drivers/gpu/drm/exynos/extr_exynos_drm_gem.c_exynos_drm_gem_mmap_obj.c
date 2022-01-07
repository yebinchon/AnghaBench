
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; int vm_page_prot; } ;
struct exynos_drm_gem {int flags; } ;
struct drm_gem_object {int dev; } ;


 int DRM_DEV_DEBUG_KMS (int ,char*,int) ;
 int EXYNOS_BO_CACHABLE ;
 int EXYNOS_BO_WC ;
 int drm_gem_vm_close (struct vm_area_struct*) ;
 int exynos_drm_gem_mmap_buffer (struct exynos_drm_gem*,struct vm_area_struct*) ;
 int pgprot_noncached (int ) ;
 int pgprot_writecombine (int ) ;
 int to_dma_dev (int ) ;
 struct exynos_drm_gem* to_exynos_gem (struct drm_gem_object*) ;
 int vm_get_page_prot (int ) ;

__attribute__((used)) static int exynos_drm_gem_mmap_obj(struct drm_gem_object *obj,
       struct vm_area_struct *vma)
{
 struct exynos_drm_gem *exynos_gem = to_exynos_gem(obj);
 int ret;

 DRM_DEV_DEBUG_KMS(to_dma_dev(obj->dev), "flags = 0x%x\n",
     exynos_gem->flags);


 if (exynos_gem->flags & EXYNOS_BO_CACHABLE)
  vma->vm_page_prot = vm_get_page_prot(vma->vm_flags);
 else if (exynos_gem->flags & EXYNOS_BO_WC)
  vma->vm_page_prot =
   pgprot_writecombine(vm_get_page_prot(vma->vm_flags));
 else
  vma->vm_page_prot =
   pgprot_noncached(vm_get_page_prot(vma->vm_flags));

 ret = exynos_drm_gem_mmap_buffer(exynos_gem, vma);
 if (ret)
  goto err_close_vm;

 return ret;

err_close_vm:
 drm_gem_vm_close(vma);

 return ret;
}
