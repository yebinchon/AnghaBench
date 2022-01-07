
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {int vm_page_prot; int vm_file; scalar_t__ vm_pgoff; int vm_flags; } ;
struct TYPE_2__ {int filp; } ;
struct etnaviv_gem_object {int flags; TYPE_1__ base; } ;
typedef int pgprot_t ;


 int ETNA_BO_UNCACHED ;
 int ETNA_BO_WC ;
 int VM_MIXEDMAP ;
 int VM_PFNMAP ;
 int fput (int ) ;
 int get_file (int ) ;
 int pgprot_noncached (int ) ;
 int pgprot_writecombine (int ) ;
 int vm_get_page_prot (int ) ;

__attribute__((used)) static int etnaviv_gem_mmap_obj(struct etnaviv_gem_object *etnaviv_obj,
  struct vm_area_struct *vma)
{
 pgprot_t vm_page_prot;

 vma->vm_flags &= ~VM_PFNMAP;
 vma->vm_flags |= VM_MIXEDMAP;

 vm_page_prot = vm_get_page_prot(vma->vm_flags);

 if (etnaviv_obj->flags & ETNA_BO_WC) {
  vma->vm_page_prot = pgprot_writecombine(vm_page_prot);
 } else if (etnaviv_obj->flags & ETNA_BO_UNCACHED) {
  vma->vm_page_prot = pgprot_noncached(vm_page_prot);
 } else {





  fput(vma->vm_file);
  get_file(etnaviv_obj->base.filp);
  vma->vm_pgoff = 0;
  vma->vm_file = etnaviv_obj->base.filp;

  vma->vm_page_prot = vm_page_prot;
 }

 return 0;
}
