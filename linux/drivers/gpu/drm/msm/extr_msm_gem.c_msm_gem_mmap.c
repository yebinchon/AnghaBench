
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_private_data; } ;
struct file {int dummy; } ;


 int DBG (char*,int) ;
 int drm_gem_mmap (struct file*,struct vm_area_struct*) ;
 int msm_gem_mmap_obj (int ,struct vm_area_struct*) ;

int msm_gem_mmap(struct file *filp, struct vm_area_struct *vma)
{
 int ret;

 ret = drm_gem_mmap(filp, vma);
 if (ret) {
  DBG("mmap failed: %d", ret);
  return ret;
 }

 return msm_gem_mmap_obj(vma->vm_private_data, vma);
}
