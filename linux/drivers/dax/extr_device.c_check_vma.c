
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {int vm_flags; unsigned long vm_start; unsigned long vm_end; } ;
struct device {int dummy; } ;
struct dev_dax {int dax_dev; struct device dev; struct dax_region* region; } ;
struct dax_region {int align; int pfn_flags; } ;
struct TYPE_2__ {int comm; } ;


 int EINVAL ;
 int ENXIO ;
 int PFN_DEV ;
 int PFN_MAP ;
 int VM_DONTCOPY ;
 int VM_MAYSHARE ;
 TYPE_1__* current ;
 int dax_alive (int ) ;
 int dev_info_ratelimited (struct device*,char*,int ,char const*,...) ;
 int vma_is_dax (struct vm_area_struct*) ;

__attribute__((used)) static int check_vma(struct dev_dax *dev_dax, struct vm_area_struct *vma,
  const char *func)
{
 struct dax_region *dax_region = dev_dax->region;
 struct device *dev = &dev_dax->dev;
 unsigned long mask;

 if (!dax_alive(dev_dax->dax_dev))
  return -ENXIO;


 if ((vma->vm_flags & VM_MAYSHARE) != VM_MAYSHARE) {
  dev_info_ratelimited(dev,
    "%s: %s: fail, attempted private mapping\n",
    current->comm, func);
  return -EINVAL;
 }

 mask = dax_region->align - 1;
 if (vma->vm_start & mask || vma->vm_end & mask) {
  dev_info_ratelimited(dev,
    "%s: %s: fail, unaligned vma (%#lx - %#lx, %#lx)\n",
    current->comm, func, vma->vm_start, vma->vm_end,
    mask);
  return -EINVAL;
 }

 if ((dax_region->pfn_flags & (PFN_DEV|PFN_MAP)) == PFN_DEV
   && (vma->vm_flags & VM_DONTCOPY) == 0) {
  dev_info_ratelimited(dev,
    "%s: %s: fail, dax range requires MADV_DONTFORK\n",
    current->comm, func);
  return -EINVAL;
 }

 if (!vma_is_dax(vma)) {
  dev_info_ratelimited(dev,
    "%s: %s: fail, vma is not DAX capable\n",
    current->comm, func);
  return -EINVAL;
 }

 return 0;
}
