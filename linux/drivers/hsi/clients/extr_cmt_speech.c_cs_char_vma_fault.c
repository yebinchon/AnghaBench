
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_fault_t ;
struct vm_fault {struct page* page; TYPE_1__* vma; } ;
struct page {int dummy; } ;
struct cs_char {int mmap_base; } ;
struct TYPE_2__ {struct cs_char* vm_private_data; } ;


 int get_page (struct page*) ;
 struct page* virt_to_page (int ) ;

__attribute__((used)) static vm_fault_t cs_char_vma_fault(struct vm_fault *vmf)
{
 struct cs_char *csdata = vmf->vma->vm_private_data;
 struct page *page;

 page = virt_to_page(csdata->mmap_base);
 get_page(page);
 vmf->page = page;

 return 0;
}
