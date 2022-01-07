
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vm_fault_t ;
struct vm_fault {int pgoff; TYPE_3__* page; TYPE_2__* vma; } ;
struct msc_iter {struct msc* msc; } ;
struct msc {int dummy; } ;
struct TYPE_7__ {int index; int mapping; } ;
struct TYPE_6__ {TYPE_1__* vm_file; } ;
struct TYPE_5__ {int f_mapping; struct msc_iter* private_data; } ;


 int VM_FAULT_SIGBUS ;
 int get_page (TYPE_3__*) ;
 TYPE_3__* msc_buffer_get_page (struct msc*,int ) ;

__attribute__((used)) static vm_fault_t msc_mmap_fault(struct vm_fault *vmf)
{
 struct msc_iter *iter = vmf->vma->vm_file->private_data;
 struct msc *msc = iter->msc;

 vmf->page = msc_buffer_get_page(msc, vmf->pgoff);
 if (!vmf->page)
  return VM_FAULT_SIGBUS;

 get_page(vmf->page);
 vmf->page->mapping = vmf->vma->vm_file->f_mapping;
 vmf->page->index = vmf->pgoff;

 return 0;
}
