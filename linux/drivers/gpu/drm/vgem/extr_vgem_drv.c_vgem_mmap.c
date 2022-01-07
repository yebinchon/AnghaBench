
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {unsigned long vm_flags; } ;
struct file {int dummy; } ;


 unsigned long VM_DONTDUMP ;
 unsigned long VM_DONTEXPAND ;
 int drm_gem_mmap (struct file*,struct vm_area_struct*) ;

__attribute__((used)) static int vgem_mmap(struct file *filp, struct vm_area_struct *vma)
{
 unsigned long flags = vma->vm_flags;
 int ret;

 ret = drm_gem_mmap(filp, vma);
 if (ret)
  return ret;




 vma->vm_flags = flags | VM_DONTEXPAND | VM_DONTDUMP;
 return 0;
}
