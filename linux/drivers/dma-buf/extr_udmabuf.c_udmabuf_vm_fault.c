
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_fault_t ;
struct vm_fault {size_t pgoff; int page; struct vm_area_struct* vma; } ;
struct vm_area_struct {struct udmabuf* vm_private_data; } ;
struct udmabuf {int * pages; } ;


 int get_page (int ) ;

__attribute__((used)) static vm_fault_t udmabuf_vm_fault(struct vm_fault *vmf)
{
 struct vm_area_struct *vma = vmf->vma;
 struct udmabuf *ubuf = vma->vm_private_data;

 vmf->page = ubuf->pages[vmf->pgoff];
 get_page(vmf->page);
 return 0;
}
