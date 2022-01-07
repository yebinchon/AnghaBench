
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_fault_t ;
struct vm_fault {int pgoff; int address; struct vm_area_struct* vma; } ;
struct vm_area_struct {struct drm_gem_object* vm_private_data; } ;
struct page {int dummy; } ;
struct drm_gem_shmem_object {struct page** pages; } ;
struct drm_gem_object {int size; } ;
typedef int loff_t ;


 int PAGE_SHIFT ;
 int VM_FAULT_SIGBUS ;
 scalar_t__ WARN_ON_ONCE (int) ;
 struct drm_gem_shmem_object* to_drm_gem_shmem_obj (struct drm_gem_object*) ;
 int vmf_insert_page (struct vm_area_struct*,int ,struct page*) ;

__attribute__((used)) static vm_fault_t drm_gem_shmem_fault(struct vm_fault *vmf)
{
 struct vm_area_struct *vma = vmf->vma;
 struct drm_gem_object *obj = vma->vm_private_data;
 struct drm_gem_shmem_object *shmem = to_drm_gem_shmem_obj(obj);
 loff_t num_pages = obj->size >> PAGE_SHIFT;
 struct page *page;

 if (vmf->pgoff >= num_pages || WARN_ON_ONCE(!shmem->pages))
  return VM_FAULT_SIGBUS;

 page = shmem->pages[vmf->pgoff];

 return vmf_insert_page(vma, vmf->address, page);
}
