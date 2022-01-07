
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {unsigned long vm_pgoff; int vm_page_prot; int vm_flags; } ;
struct tegra_bo {int paddr; int vaddr; int pages; } ;
struct drm_gem_object {int size; TYPE_1__* dev; } ;
typedef int pgprot_t ;
struct TYPE_2__ {int dev; } ;


 int VM_MIXEDMAP ;
 int VM_PFNMAP ;
 int dma_mmap_wc (int ,struct vm_area_struct*,int ,int ,int ) ;
 int drm_gem_vm_close (struct vm_area_struct*) ;
 int pgprot_writecombine (int ) ;
 struct tegra_bo* to_tegra_bo (struct drm_gem_object*) ;
 int vm_get_page_prot (int ) ;

int __tegra_gem_mmap(struct drm_gem_object *gem, struct vm_area_struct *vma)
{
 struct tegra_bo *bo = to_tegra_bo(gem);

 if (!bo->pages) {
  unsigned long vm_pgoff = vma->vm_pgoff;
  int err;






  vma->vm_flags &= ~VM_PFNMAP;
  vma->vm_pgoff = 0;

  err = dma_mmap_wc(gem->dev->dev, vma, bo->vaddr, bo->paddr,
      gem->size);
  if (err < 0) {
   drm_gem_vm_close(vma);
   return err;
  }

  vma->vm_pgoff = vm_pgoff;
 } else {
  pgprot_t prot = vm_get_page_prot(vma->vm_flags);

  vma->vm_flags |= VM_MIXEDMAP;
  vma->vm_flags &= ~VM_PFNMAP;

  vma->vm_page_prot = pgprot_writecombine(prot);
 }

 return 0;
}
