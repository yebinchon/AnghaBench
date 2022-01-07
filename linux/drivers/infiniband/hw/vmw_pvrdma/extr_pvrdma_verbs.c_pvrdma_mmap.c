
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vm_area_struct {unsigned long vm_start; unsigned long vm_end; unsigned long vm_pgoff; int vm_flags; int vm_page_prot; } ;
struct TYPE_6__ {int pfn; } ;
struct pvrdma_ucontext {TYPE_3__ uar; TYPE_2__* dev; } ;
struct ib_ucontext {int dummy; } ;
struct TYPE_5__ {TYPE_1__* pdev; } ;
struct TYPE_4__ {int dev; } ;


 int EAGAIN ;
 int EINVAL ;
 unsigned long PAGE_MASK ;
 unsigned long PAGE_SHIFT ;
 unsigned long PAGE_SIZE ;
 int VM_DONTCOPY ;
 int VM_DONTEXPAND ;
 int dev_dbg (int *,char*) ;
 int dev_warn (int *,char*) ;
 scalar_t__ io_remap_pfn_range (struct vm_area_struct*,unsigned long,int ,unsigned long,int ) ;
 int pgprot_noncached (int ) ;
 struct pvrdma_ucontext* to_vucontext (struct ib_ucontext*) ;

int pvrdma_mmap(struct ib_ucontext *ibcontext, struct vm_area_struct *vma)
{
 struct pvrdma_ucontext *context = to_vucontext(ibcontext);
 unsigned long start = vma->vm_start;
 unsigned long size = vma->vm_end - vma->vm_start;
 unsigned long offset = vma->vm_pgoff << PAGE_SHIFT;

 dev_dbg(&context->dev->pdev->dev, "create mmap region\n");

 if ((size != PAGE_SIZE) || (offset & ~PAGE_MASK)) {
  dev_warn(&context->dev->pdev->dev,
    "invalid params for mmap region\n");
  return -EINVAL;
 }


 vma->vm_flags |= VM_DONTCOPY | VM_DONTEXPAND;
 vma->vm_page_prot = pgprot_noncached(vma->vm_page_prot);
 if (io_remap_pfn_range(vma, start, context->uar.pfn, size,
          vma->vm_page_prot))
  return -EAGAIN;

 return 0;
}
