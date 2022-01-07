
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct file {int dummy; } ;


 int drm_gem_mmap (struct file*,struct vm_area_struct*) ;
 int lima_set_vma_flags (struct vm_area_struct*) ;

int lima_gem_mmap(struct file *filp, struct vm_area_struct *vma)
{
 int ret;

 ret = drm_gem_mmap(filp, vma);
 if (ret)
  return ret;

 lima_set_vma_flags(vma);
 return 0;
}
