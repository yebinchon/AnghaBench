
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ vm_fault_t ;
struct vm_fault {scalar_t__ address; int vma; int page; } ;
struct nouveau_fence {int dummy; } ;
struct nouveau_drm {TYPE_2__* dev; } ;
struct TYPE_3__ {int chan; } ;
struct nouveau_dmem {TYPE_1__ migrate; struct nouveau_drm* drm; } ;
struct migrate_vma {unsigned long* src; unsigned long* dst; int cpages; scalar_t__ end; scalar_t__ start; int vma; } ;
typedef int dma_addr_t ;
struct TYPE_4__ {int dev; } ;


 int DMA_BIDIRECTIONAL ;
 scalar_t__ PAGE_SIZE ;
 scalar_t__ VM_FAULT_SIGBUS ;
 int dma_unmap_page (int ,int ,scalar_t__,int ) ;
 int migrate_vma_finalize (struct migrate_vma*) ;
 int migrate_vma_pages (struct migrate_vma*) ;
 scalar_t__ migrate_vma_setup (struct migrate_vma*) ;
 scalar_t__ nouveau_dmem_fault_copy_one (struct nouveau_drm*,struct vm_fault*,struct migrate_vma*,int *) ;
 int nouveau_dmem_fence_done (struct nouveau_fence**) ;
 int nouveau_fence_new (int ,int,struct nouveau_fence**) ;
 struct nouveau_dmem* page_to_dmem (int ) ;

__attribute__((used)) static vm_fault_t nouveau_dmem_migrate_to_ram(struct vm_fault *vmf)
{
 struct nouveau_dmem *dmem = page_to_dmem(vmf->page);
 struct nouveau_drm *drm = dmem->drm;
 struct nouveau_fence *fence;
 unsigned long src = 0, dst = 0;
 dma_addr_t dma_addr = 0;
 vm_fault_t ret;
 struct migrate_vma args = {
  .vma = vmf->vma,
  .start = vmf->address,
  .end = vmf->address + PAGE_SIZE,
  .src = &src,
  .dst = &dst,
 };






 if (migrate_vma_setup(&args) < 0)
  return VM_FAULT_SIGBUS;
 if (!args.cpages)
  return 0;

 ret = nouveau_dmem_fault_copy_one(drm, vmf, &args, &dma_addr);
 if (ret || dst == 0)
  goto done;

 nouveau_fence_new(dmem->migrate.chan, 0, &fence);
 migrate_vma_pages(&args);
 nouveau_dmem_fence_done(&fence);
 dma_unmap_page(drm->dev->dev, dma_addr, PAGE_SIZE, DMA_BIDIRECTIONAL);
done:
 migrate_vma_finalize(&args);
 return ret;
}
