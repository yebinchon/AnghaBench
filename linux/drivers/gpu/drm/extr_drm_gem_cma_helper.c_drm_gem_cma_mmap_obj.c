
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vm_area_struct {scalar_t__ vm_start; scalar_t__ vm_end; scalar_t__ vm_pgoff; int vm_flags; } ;
struct TYPE_4__ {TYPE_1__* dev; } ;
struct drm_gem_cma_object {int paddr; int vaddr; TYPE_2__ base; } ;
struct TYPE_3__ {int dev; } ;


 int VM_PFNMAP ;
 int dma_mmap_wc (int ,struct vm_area_struct*,int ,int ,scalar_t__) ;
 int drm_gem_vm_close (struct vm_area_struct*) ;

__attribute__((used)) static int drm_gem_cma_mmap_obj(struct drm_gem_cma_object *cma_obj,
    struct vm_area_struct *vma)
{
 int ret;






 vma->vm_flags &= ~VM_PFNMAP;
 vma->vm_pgoff = 0;

 ret = dma_mmap_wc(cma_obj->base.dev->dev, vma, cma_obj->vaddr,
     cma_obj->paddr, vma->vm_end - vma->vm_start);
 if (ret)
  drm_gem_vm_close(vma);

 return ret;
}
