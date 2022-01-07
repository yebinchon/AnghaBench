
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_fault_t ;
struct vm_fault {size_t address; struct vm_area_struct* vma; } ;
struct vm_area_struct {size_t vm_start; struct drm_gem_object* vm_private_data; } ;
struct page {int dummy; } ;
struct etnaviv_gem_object {int lock; } ;
struct drm_gem_object {int dummy; } ;
typedef size_t pgoff_t ;


 scalar_t__ IS_ERR (struct page**) ;
 size_t PAGE_SHIFT ;
 int PTR_ERR (struct page**) ;
 int VERB (char*,void*,size_t,size_t) ;
 int VM_FAULT_NOPAGE ;
 struct page** etnaviv_gem_get_pages (struct etnaviv_gem_object*) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 size_t page_to_pfn (struct page*) ;
 struct etnaviv_gem_object* to_etnaviv_bo (struct drm_gem_object*) ;
 int vmf_error (int) ;
 int vmf_insert_page (struct vm_area_struct*,size_t,struct page*) ;

vm_fault_t etnaviv_gem_fault(struct vm_fault *vmf)
{
 struct vm_area_struct *vma = vmf->vma;
 struct drm_gem_object *obj = vma->vm_private_data;
 struct etnaviv_gem_object *etnaviv_obj = to_etnaviv_bo(obj);
 struct page **pages, *page;
 pgoff_t pgoff;
 int err;






 err = mutex_lock_interruptible(&etnaviv_obj->lock);
 if (err)
  return VM_FAULT_NOPAGE;

 pages = etnaviv_gem_get_pages(etnaviv_obj);
 mutex_unlock(&etnaviv_obj->lock);

 if (IS_ERR(pages)) {
  err = PTR_ERR(pages);
  return vmf_error(err);
 }


 pgoff = (vmf->address - vma->vm_start) >> PAGE_SHIFT;

 page = pages[pgoff];

 VERB("Inserting %p pfn %lx, pa %lx", (void *)vmf->address,
      page_to_pfn(page), page_to_pfn(page) << PAGE_SHIFT);

 return vmf_insert_page(vma, vmf->address, page);
}
