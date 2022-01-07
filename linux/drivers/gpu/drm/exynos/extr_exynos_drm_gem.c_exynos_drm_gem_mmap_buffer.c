
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {unsigned long vm_end; unsigned long vm_start; scalar_t__ vm_pgoff; int vm_flags; } ;
struct TYPE_2__ {struct drm_device* dev; } ;
struct exynos_drm_gem {unsigned long size; int dma_attrs; int dma_addr; int cookie; TYPE_1__ base; } ;
struct drm_device {int dummy; } ;


 int DRM_ERROR (char*) ;
 int EINVAL ;
 int VM_PFNMAP ;
 int dma_mmap_attrs (int ,struct vm_area_struct*,int ,int ,unsigned long,int ) ;
 int to_dma_dev (struct drm_device*) ;

__attribute__((used)) static int exynos_drm_gem_mmap_buffer(struct exynos_drm_gem *exynos_gem,
          struct vm_area_struct *vma)
{
 struct drm_device *drm_dev = exynos_gem->base.dev;
 unsigned long vm_size;
 int ret;

 vma->vm_flags &= ~VM_PFNMAP;
 vma->vm_pgoff = 0;

 vm_size = vma->vm_end - vma->vm_start;


 if (vm_size > exynos_gem->size)
  return -EINVAL;

 ret = dma_mmap_attrs(to_dma_dev(drm_dev), vma, exynos_gem->cookie,
        exynos_gem->dma_addr, exynos_gem->size,
        exynos_gem->dma_attrs);
 if (ret < 0) {
  DRM_ERROR("failed to mmap.\n");
  return ret;
 }

 return 0;
}
