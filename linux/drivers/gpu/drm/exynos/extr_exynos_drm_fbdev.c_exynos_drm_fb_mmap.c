
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; unsigned long vm_end; unsigned long vm_start; } ;
struct fb_info {struct drm_fb_helper* par; } ;
struct exynos_drm_gem {unsigned long size; int dma_attrs; int dma_addr; int cookie; } ;
struct exynos_drm_fbdev {struct exynos_drm_gem* exynos_gem; } ;
struct drm_fb_helper {int dev; } ;


 int DRM_DEV_ERROR (int ,char*) ;
 int EINVAL ;
 int VM_DONTDUMP ;
 int VM_DONTEXPAND ;
 int VM_IO ;
 int dma_mmap_attrs (int ,struct vm_area_struct*,int ,int ,unsigned long,int ) ;
 int to_dma_dev (int ) ;
 struct exynos_drm_fbdev* to_exynos_fbdev (struct drm_fb_helper*) ;

__attribute__((used)) static int exynos_drm_fb_mmap(struct fb_info *info,
   struct vm_area_struct *vma)
{
 struct drm_fb_helper *helper = info->par;
 struct exynos_drm_fbdev *exynos_fbd = to_exynos_fbdev(helper);
 struct exynos_drm_gem *exynos_gem = exynos_fbd->exynos_gem;
 unsigned long vm_size;
 int ret;

 vma->vm_flags |= VM_IO | VM_DONTEXPAND | VM_DONTDUMP;

 vm_size = vma->vm_end - vma->vm_start;

 if (vm_size > exynos_gem->size)
  return -EINVAL;

 ret = dma_mmap_attrs(to_dma_dev(helper->dev), vma, exynos_gem->cookie,
        exynos_gem->dma_addr, exynos_gem->size,
        exynos_gem->dma_attrs);
 if (ret < 0) {
  DRM_DEV_ERROR(to_dma_dev(helper->dev), "failed to mmap.\n");
  return ret;
 }

 return 0;
}
