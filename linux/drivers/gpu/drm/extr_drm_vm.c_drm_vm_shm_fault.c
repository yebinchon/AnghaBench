
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_fault_t ;
struct vm_fault {unsigned long address; struct page* page; struct vm_area_struct* vma; } ;
struct vm_area_struct {unsigned long vm_start; struct drm_local_map* vm_private_data; } ;
struct page {int dummy; } ;
struct drm_local_map {scalar_t__ handle; } ;


 int DRM_DEBUG (char*,unsigned long) ;
 int VM_FAULT_SIGBUS ;
 int get_page (struct page*) ;
 struct page* vmalloc_to_page (void*) ;

__attribute__((used)) static vm_fault_t drm_vm_shm_fault(struct vm_fault *vmf)
{
 struct vm_area_struct *vma = vmf->vma;
 struct drm_local_map *map = vma->vm_private_data;
 unsigned long offset;
 unsigned long i;
 struct page *page;

 if (!map)
  return VM_FAULT_SIGBUS;

 offset = vmf->address - vma->vm_start;
 i = (unsigned long)map->handle + offset;
 page = vmalloc_to_page((void *)i);
 if (!page)
  return VM_FAULT_SIGBUS;
 get_page(page);
 vmf->page = page;

 DRM_DEBUG("shm_fault 0x%lx\n", offset);
 return 0;
}
