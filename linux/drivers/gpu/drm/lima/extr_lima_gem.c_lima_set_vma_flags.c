
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_page_prot; int vm_flags; } ;
typedef int pgprot_t ;


 int VM_MIXEDMAP ;
 int VM_PFNMAP ;
 int pgprot_writecombine (int ) ;
 int vm_get_page_prot (int ) ;

void lima_set_vma_flags(struct vm_area_struct *vma)
{
 pgprot_t prot = vm_get_page_prot(vma->vm_flags);

 vma->vm_flags |= VM_MIXEDMAP;
 vma->vm_flags &= ~VM_PFNMAP;
 vma->vm_page_prot = pgprot_writecombine(prot);
}
