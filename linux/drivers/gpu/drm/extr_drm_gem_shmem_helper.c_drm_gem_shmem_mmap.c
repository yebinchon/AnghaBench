
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {int vm_pgoff; int vm_flags; int vm_private_data; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int vma_node; } ;
struct drm_gem_shmem_object {TYPE_1__ base; } ;


 int VM_MIXEDMAP ;
 int VM_PFNMAP ;
 int drm_gem_mmap (struct file*,struct vm_area_struct*) ;
 int drm_gem_shmem_get_pages (struct drm_gem_shmem_object*) ;
 int drm_gem_vm_close (struct vm_area_struct*) ;
 scalar_t__ drm_vma_node_start (int *) ;
 struct drm_gem_shmem_object* to_drm_gem_shmem_obj (int ) ;

int drm_gem_shmem_mmap(struct file *filp, struct vm_area_struct *vma)
{
 struct drm_gem_shmem_object *shmem;
 int ret;

 ret = drm_gem_mmap(filp, vma);
 if (ret)
  return ret;

 shmem = to_drm_gem_shmem_obj(vma->vm_private_data);

 ret = drm_gem_shmem_get_pages(shmem);
 if (ret) {
  drm_gem_vm_close(vma);
  return ret;
 }


 vma->vm_flags &= ~VM_PFNMAP;
 vma->vm_flags |= VM_MIXEDMAP;


 vma->vm_pgoff -= drm_vma_node_start(&shmem->base.vma_node);

 return 0;
}
