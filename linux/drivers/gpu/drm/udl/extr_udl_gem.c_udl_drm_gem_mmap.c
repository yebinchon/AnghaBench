
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_private_data; int vm_flags; } ;
struct file {int dummy; } ;


 int VM_MIXEDMAP ;
 int VM_PFNMAP ;
 int drm_gem_mmap (struct file*,struct vm_area_struct*) ;
 int to_udl_bo (int ) ;
 int update_vm_cache_attr (int ,struct vm_area_struct*) ;

int udl_drm_gem_mmap(struct file *filp, struct vm_area_struct *vma)
{
 int ret;

 ret = drm_gem_mmap(filp, vma);
 if (ret)
  return ret;

 vma->vm_flags &= ~VM_PFNMAP;
 vma->vm_flags |= VM_MIXEDMAP;

 update_vm_cache_attr(to_udl_bo(vma->vm_private_data), vma);

 return ret;
}
