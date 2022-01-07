
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct vm_area_struct {int vm_end; int vm_start; int vm_pgoff; void* vm_page_prot; } ;
struct ib_ucontext {int device; } ;
struct c4iw_ucontext {int dummy; } ;
struct TYPE_3__ {int adapter_type; int pdev; } ;
struct c4iw_rdev {int oc_mw_pa; TYPE_1__ lldi; } ;
struct c4iw_mm_entry {int addr; } ;
struct TYPE_4__ {struct c4iw_rdev rdev; } ;


 int EINVAL ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int io_remap_pfn_range (struct vm_area_struct*,int,int,int,void*) ;
 int is_t4 (int ) ;
 int kfree (struct c4iw_mm_entry*) ;
 int pci_resource_len (int ,int) ;
 int pci_resource_start (int ,int) ;
 void* pgprot_noncached (void*) ;
 int pr_debug (char*,int,int,int) ;
 int remap_pfn_range (struct vm_area_struct*,int,int,int,void*) ;
 struct c4iw_mm_entry* remove_mmap (struct c4iw_ucontext*,int,int) ;
 void* t4_pgprot_wc (void*) ;
 TYPE_2__* to_c4iw_dev (int ) ;
 struct c4iw_ucontext* to_c4iw_ucontext (struct ib_ucontext*) ;

__attribute__((used)) static int c4iw_mmap(struct ib_ucontext *context, struct vm_area_struct *vma)
{
 int len = vma->vm_end - vma->vm_start;
 u32 key = vma->vm_pgoff << PAGE_SHIFT;
 struct c4iw_rdev *rdev;
 int ret = 0;
 struct c4iw_mm_entry *mm;
 struct c4iw_ucontext *ucontext;
 u64 addr;

 pr_debug("pgoff 0x%lx key 0x%x len %d\n", vma->vm_pgoff,
   key, len);

 if (vma->vm_start & (PAGE_SIZE-1))
  return -EINVAL;

 rdev = &(to_c4iw_dev(context->device)->rdev);
 ucontext = to_c4iw_ucontext(context);

 mm = remove_mmap(ucontext, key, len);
 if (!mm)
  return -EINVAL;
 addr = mm->addr;
 kfree(mm);

 if ((addr >= pci_resource_start(rdev->lldi.pdev, 0)) &&
     (addr < (pci_resource_start(rdev->lldi.pdev, 0) +
      pci_resource_len(rdev->lldi.pdev, 0)))) {




  vma->vm_page_prot = pgprot_noncached(vma->vm_page_prot);
  ret = io_remap_pfn_range(vma, vma->vm_start,
      addr >> PAGE_SHIFT,
      len, vma->vm_page_prot);
 } else if ((addr >= pci_resource_start(rdev->lldi.pdev, 2)) &&
     (addr < (pci_resource_start(rdev->lldi.pdev, 2) +
      pci_resource_len(rdev->lldi.pdev, 2)))) {




  if (addr >= rdev->oc_mw_pa)
   vma->vm_page_prot = t4_pgprot_wc(vma->vm_page_prot);
  else {
   if (!is_t4(rdev->lldi.adapter_type))
    vma->vm_page_prot =
     t4_pgprot_wc(vma->vm_page_prot);
   else
    vma->vm_page_prot =
     pgprot_noncached(vma->vm_page_prot);
  }
  ret = io_remap_pfn_range(vma, vma->vm_start,
      addr >> PAGE_SHIFT,
      len, vma->vm_page_prot);
 } else {




  ret = remap_pfn_range(vma, vma->vm_start,
          addr >> PAGE_SHIFT,
          len, vma->vm_page_prot);
 }

 return ret;
}
