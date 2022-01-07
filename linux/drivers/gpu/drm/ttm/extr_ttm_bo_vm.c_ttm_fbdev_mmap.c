
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {scalar_t__ vm_pgoff; int vm_flags; struct ttm_buffer_object* vm_private_data; int * vm_ops; } ;
struct ttm_buffer_object {int dummy; } ;


 int EACCES ;
 int VM_DONTEXPAND ;
 int VM_IO ;
 int VM_MIXEDMAP ;
 int ttm_bo_get (struct ttm_buffer_object*) ;
 int ttm_bo_vm_ops ;

int ttm_fbdev_mmap(struct vm_area_struct *vma, struct ttm_buffer_object *bo)
{
 if (vma->vm_pgoff != 0)
  return -EACCES;

 ttm_bo_get(bo);

 vma->vm_ops = &ttm_bo_vm_ops;
 vma->vm_private_data = bo;
 vma->vm_flags |= VM_MIXEDMAP;
 vma->vm_flags |= VM_IO | VM_DONTEXPAND;
 return 0;
}
