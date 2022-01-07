
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vm_area_struct {int vm_flags; unsigned long vm_pgoff; scalar_t__ vm_start; scalar_t__ vm_end; struct drm_gem_object* vm_private_data; } ;
struct TYPE_5__ {TYPE_1__* dev; } ;
struct TYPE_6__ {int paddr; int vaddr; TYPE_2__ base; } ;
struct vc4_bo {scalar_t__ madv; TYPE_3__ base; scalar_t__ validated_shader; } ;
struct file {int dummy; } ;
struct drm_gem_object {int dummy; } ;
struct TYPE_4__ {int dev; } ;


 int DRM_DEBUG (char*,...) ;
 int EINVAL ;
 scalar_t__ VC4_MADV_DONTNEED ;
 scalar_t__ VC4_MADV_WILLNEED ;
 int VM_PFNMAP ;
 int VM_WRITE ;
 int dma_mmap_wc (int ,struct vm_area_struct*,int ,int ,scalar_t__) ;
 int drm_gem_mmap (struct file*,struct vm_area_struct*) ;
 int drm_gem_vm_close (struct vm_area_struct*) ;
 struct vc4_bo* to_vc4_bo (struct drm_gem_object*) ;

int vc4_mmap(struct file *filp, struct vm_area_struct *vma)
{
 struct drm_gem_object *gem_obj;
 unsigned long vm_pgoff;
 struct vc4_bo *bo;
 int ret;

 ret = drm_gem_mmap(filp, vma);
 if (ret)
  return ret;

 gem_obj = vma->vm_private_data;
 bo = to_vc4_bo(gem_obj);

 if (bo->validated_shader && (vma->vm_flags & VM_WRITE)) {
  DRM_DEBUG("mmaping of shader BOs for writing not allowed.\n");
  return -EINVAL;
 }

 if (bo->madv != VC4_MADV_WILLNEED) {
  DRM_DEBUG("mmaping of %s BO not allowed\n",
     bo->madv == VC4_MADV_DONTNEED ?
     "purgeable" : "purged");
  return -EINVAL;
 }






 vma->vm_flags &= ~VM_PFNMAP;
 vm_pgoff = vma->vm_pgoff;
 vma->vm_pgoff = 0;
 ret = dma_mmap_wc(bo->base.base.dev->dev, vma, bo->base.vaddr,
     bo->base.paddr, vma->vm_end - vma->vm_start);
 vma->vm_pgoff = vm_pgoff;

 if (ret)
  drm_gem_vm_close(vma);

 return ret;
}
