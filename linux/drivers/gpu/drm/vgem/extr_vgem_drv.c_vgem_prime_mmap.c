
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {scalar_t__ vm_end; scalar_t__ vm_start; int vm_flags; int vm_page_prot; int vm_file; } ;
struct drm_gem_object {scalar_t__ size; int filp; } ;


 int EINVAL ;
 int ENODEV ;
 int VM_DONTDUMP ;
 int VM_DONTEXPAND ;
 int call_mmap (int ,struct vm_area_struct*) ;
 int fput (int ) ;
 int get_file (int ) ;
 int pgprot_writecombine (int ) ;
 int vm_get_page_prot (int) ;

__attribute__((used)) static int vgem_prime_mmap(struct drm_gem_object *obj,
      struct vm_area_struct *vma)
{
 int ret;

 if (obj->size < vma->vm_end - vma->vm_start)
  return -EINVAL;

 if (!obj->filp)
  return -ENODEV;

 ret = call_mmap(obj->filp, vma);
 if (ret)
  return ret;

 fput(vma->vm_file);
 vma->vm_file = get_file(obj->filp);
 vma->vm_flags |= VM_DONTEXPAND | VM_DONTDUMP;
 vma->vm_page_prot = pgprot_writecombine(vm_get_page_prot(vma->vm_flags));

 return 0;
}
