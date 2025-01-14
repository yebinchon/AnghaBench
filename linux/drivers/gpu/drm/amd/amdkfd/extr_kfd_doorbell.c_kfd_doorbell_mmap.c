
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {scalar_t__ vm_end; scalar_t__ vm_start; int vm_flags; int vm_page_prot; } ;
struct kfd_process {int dummy; } ;
struct kfd_dev {int dummy; } ;
typedef int phys_addr_t ;


 int EINVAL ;
 int PAGE_SHIFT ;
 int VM_DONTCOPY ;
 int VM_DONTDUMP ;
 int VM_DONTEXPAND ;
 int VM_IO ;
 int VM_NORESERVE ;
 int VM_PFNMAP ;
 int io_remap_pfn_range (struct vm_area_struct*,scalar_t__,int,scalar_t__,int ) ;
 scalar_t__ kfd_doorbell_process_slice (struct kfd_dev*) ;
 int kfd_get_process_doorbells (struct kfd_dev*,struct kfd_process*) ;
 int pgprot_noncached (int ) ;
 int pr_debug (char*,unsigned long long,int,int,scalar_t__) ;

int kfd_doorbell_mmap(struct kfd_dev *dev, struct kfd_process *process,
        struct vm_area_struct *vma)
{
 phys_addr_t address;





 if (vma->vm_end - vma->vm_start != kfd_doorbell_process_slice(dev))
  return -EINVAL;


 address = kfd_get_process_doorbells(dev, process);

 vma->vm_flags |= VM_IO | VM_DONTCOPY | VM_DONTEXPAND | VM_NORESERVE |
    VM_DONTDUMP | VM_PFNMAP;

 vma->vm_page_prot = pgprot_noncached(vma->vm_page_prot);

 pr_debug("Mapping doorbell page\n"
   "     target user address == 0x%08llX\n"
   "     physical address    == 0x%08llX\n"
   "     vm_flags            == 0x%04lX\n"
   "     size                == 0x%04lX\n",
   (unsigned long long) vma->vm_start, address, vma->vm_flags,
   kfd_doorbell_process_slice(dev));


 return io_remap_pfn_range(vma,
    vma->vm_start,
    address >> PAGE_SHIFT,
    kfd_doorbell_process_slice(dev),
    vma->vm_page_prot);
}
