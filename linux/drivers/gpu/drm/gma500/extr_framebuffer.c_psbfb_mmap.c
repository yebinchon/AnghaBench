
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {unsigned long vm_pgoff; int vm_flags; void* vm_private_data; int * vm_ops; TYPE_1__* vm_file; } ;
struct psb_framebuffer {scalar_t__ addr_space; } ;
struct psb_fbdev {struct psb_framebuffer pfb; } ;
struct fb_info {struct psb_fbdev* par; } ;
struct TYPE_2__ {scalar_t__ f_mapping; } ;


 int EINVAL ;
 unsigned long PAGE_SHIFT ;
 int VM_DONTDUMP ;
 int VM_DONTEXPAND ;
 int VM_IO ;
 int VM_MIXEDMAP ;
 int psbfb_vm_ops ;

__attribute__((used)) static int psbfb_mmap(struct fb_info *info, struct vm_area_struct *vma)
{
 struct psb_fbdev *fbdev = info->par;
 struct psb_framebuffer *psbfb = &fbdev->pfb;

 if (vma->vm_pgoff != 0)
  return -EINVAL;
 if (vma->vm_pgoff > (~0UL >> PAGE_SHIFT))
  return -EINVAL;

 if (!psbfb->addr_space)
  psbfb->addr_space = vma->vm_file->f_mapping;





 vma->vm_ops = &psbfb_vm_ops;
 vma->vm_private_data = (void *)psbfb;
 vma->vm_flags |= VM_IO | VM_MIXEDMAP | VM_DONTEXPAND | VM_DONTDUMP;
 return 0;
}
