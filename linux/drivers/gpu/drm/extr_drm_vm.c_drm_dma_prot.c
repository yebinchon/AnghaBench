
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vm_area_struct {int vm_flags; } ;
typedef int pgprot_t ;


 int pgprot_noncached_wc (int ) ;
 int vm_get_page_prot (int ) ;

__attribute__((used)) static pgprot_t drm_dma_prot(uint32_t map_type, struct vm_area_struct *vma)
{
 pgprot_t tmp = vm_get_page_prot(vma->vm_flags);




 return tmp;
}
