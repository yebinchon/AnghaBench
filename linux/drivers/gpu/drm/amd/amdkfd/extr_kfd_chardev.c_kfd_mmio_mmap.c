
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {scalar_t__ vm_end; scalar_t__ vm_start; int vm_flags; int vm_page_prot; } ;
struct kfd_process {int pasid; } ;
struct kfd_dev {int kgd; } ;
typedef int phys_addr_t ;


 int EINVAL ;
 int PAGE_SHIFT ;
 scalar_t__ PAGE_SIZE ;
 int VM_DONTCOPY ;
 int VM_DONTDUMP ;
 int VM_DONTEXPAND ;
 int VM_IO ;
 int VM_NORESERVE ;
 int VM_PFNMAP ;
 int amdgpu_amdkfd_get_mmio_remap_phys_addr (int ) ;
 int io_remap_pfn_range (struct vm_area_struct*,scalar_t__,int,scalar_t__,int ) ;
 int pgprot_noncached (int ) ;
 int pr_debug (char*,int ,unsigned long long,int,int,scalar_t__) ;

__attribute__((used)) static int kfd_mmio_mmap(struct kfd_dev *dev, struct kfd_process *process,
        struct vm_area_struct *vma)
{
 phys_addr_t address;
 int ret;

 if (vma->vm_end - vma->vm_start != PAGE_SIZE)
  return -EINVAL;

 address = amdgpu_amdkfd_get_mmio_remap_phys_addr(dev->kgd);

 vma->vm_flags |= VM_IO | VM_DONTCOPY | VM_DONTEXPAND | VM_NORESERVE |
    VM_DONTDUMP | VM_PFNMAP;

 vma->vm_page_prot = pgprot_noncached(vma->vm_page_prot);

 pr_debug("Process %d mapping mmio page\n"
   "     target user address == 0x%08llX\n"
   "     physical address    == 0x%08llX\n"
   "     vm_flags            == 0x%04lX\n"
   "     size                == 0x%04lX\n",
   process->pasid, (unsigned long long) vma->vm_start,
   address, vma->vm_flags, PAGE_SIZE);

 ret = io_remap_pfn_range(vma,
    vma->vm_start,
    address >> PAGE_SHIFT,
    PAGE_SIZE,
    vma->vm_page_prot);
 return ret;
}
