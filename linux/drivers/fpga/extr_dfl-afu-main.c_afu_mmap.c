
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct vm_area_struct {int vm_end; int vm_start; int vm_flags; int vm_pgoff; int vm_page_prot; } ;
struct platform_device {int dev; } ;
struct file {struct platform_device* private_data; } ;
struct dfl_feature_platform_data {int dummy; } ;
struct dfl_afu_mmio_region {int flags; int phys; int offset; } ;


 int DFL_PORT_REGION_MMAP ;
 int DFL_PORT_REGION_READ ;
 int DFL_PORT_REGION_WRITE ;
 int EINVAL ;
 int EPERM ;
 int PAGE_SHIFT ;
 int VM_READ ;
 int VM_SHARED ;
 int VM_WRITE ;
 int afu_mmio_region_get_by_offset (struct dfl_feature_platform_data*,int,int,struct dfl_afu_mmio_region*) ;
 struct dfl_feature_platform_data* dev_get_platdata (int *) ;
 int pgprot_noncached (int ) ;
 int remap_pfn_range (struct vm_area_struct*,int,int,int,int ) ;

__attribute__((used)) static int afu_mmap(struct file *filp, struct vm_area_struct *vma)
{
 struct platform_device *pdev = filp->private_data;
 struct dfl_feature_platform_data *pdata;
 u64 size = vma->vm_end - vma->vm_start;
 struct dfl_afu_mmio_region region;
 u64 offset;
 int ret;

 if (!(vma->vm_flags & VM_SHARED))
  return -EINVAL;

 pdata = dev_get_platdata(&pdev->dev);

 offset = vma->vm_pgoff << PAGE_SHIFT;
 ret = afu_mmio_region_get_by_offset(pdata, offset, size, &region);
 if (ret)
  return ret;

 if (!(region.flags & DFL_PORT_REGION_MMAP))
  return -EINVAL;

 if ((vma->vm_flags & VM_READ) && !(region.flags & DFL_PORT_REGION_READ))
  return -EPERM;

 if ((vma->vm_flags & VM_WRITE) &&
     !(region.flags & DFL_PORT_REGION_WRITE))
  return -EPERM;

 vma->vm_page_prot = pgprot_noncached(vma->vm_page_prot);

 return remap_pfn_range(vma, vma->vm_start,
   (region.phys + (offset - region.offset)) >> PAGE_SHIFT,
   size, vma->vm_page_prot);
}
