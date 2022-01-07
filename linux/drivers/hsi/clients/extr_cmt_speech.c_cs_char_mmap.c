
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {scalar_t__ vm_end; scalar_t__ vm_start; int vm_flags; int vm_private_data; int * vm_ops; } ;
struct file {int private_data; } ;


 int EINVAL ;
 int VM_DONTDUMP ;
 int VM_DONTEXPAND ;
 int VM_IO ;
 int cs_char_vm_ops ;
 int vma_pages (struct vm_area_struct*) ;

__attribute__((used)) static int cs_char_mmap(struct file *file, struct vm_area_struct *vma)
{
 if (vma->vm_end < vma->vm_start)
  return -EINVAL;

 if (vma_pages(vma) != 1)
  return -EINVAL;

 vma->vm_flags |= VM_IO | VM_DONTDUMP | VM_DONTEXPAND;
 vma->vm_ops = &cs_char_vm_ops;
 vma->vm_private_data = file->private_data;

 return 0;
}
