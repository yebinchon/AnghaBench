
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_fault_t ;
struct vm_fault {unsigned long address; struct vm_area_struct* vma; } ;
struct vm_area_struct {unsigned long vm_start; struct drm_gem_object* vm_private_data; } ;
struct page {int dummy; } ;
struct msm_gem_object {scalar_t__ madv; int lock; } ;
struct drm_gem_object {int dummy; } ;
typedef size_t pgoff_t ;


 scalar_t__ IS_ERR (struct page**) ;
 scalar_t__ MSM_MADV_WILLNEED ;
 unsigned long PAGE_SHIFT ;
 int PFN_DEV ;
 int PTR_ERR (struct page**) ;
 int VERB (char*,void*,unsigned long,unsigned long) ;
 int VM_FAULT_NOPAGE ;
 int VM_FAULT_SIGBUS ;
 scalar_t__ WARN_ON (int) ;
 int __pfn_to_pfn_t (unsigned long,int ) ;
 struct page** get_pages (struct drm_gem_object*) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 unsigned long page_to_pfn (struct page*) ;
 struct msm_gem_object* to_msm_bo (struct drm_gem_object*) ;
 int vmf_error (int ) ;
 int vmf_insert_mixed (struct vm_area_struct*,unsigned long,int ) ;

vm_fault_t msm_gem_fault(struct vm_fault *vmf)
{
 struct vm_area_struct *vma = vmf->vma;
 struct drm_gem_object *obj = vma->vm_private_data;
 struct msm_gem_object *msm_obj = to_msm_bo(obj);
 struct page **pages;
 unsigned long pfn;
 pgoff_t pgoff;
 int err;
 vm_fault_t ret;





 err = mutex_lock_interruptible(&msm_obj->lock);
 if (err) {
  ret = VM_FAULT_NOPAGE;
  goto out;
 }

 if (WARN_ON(msm_obj->madv != MSM_MADV_WILLNEED)) {
  mutex_unlock(&msm_obj->lock);
  return VM_FAULT_SIGBUS;
 }


 pages = get_pages(obj);
 if (IS_ERR(pages)) {
  ret = vmf_error(PTR_ERR(pages));
  goto out_unlock;
 }


 pgoff = (vmf->address - vma->vm_start) >> PAGE_SHIFT;

 pfn = page_to_pfn(pages[pgoff]);

 VERB("Inserting %p pfn %lx, pa %lx", (void *)vmf->address,
   pfn, pfn << PAGE_SHIFT);

 ret = vmf_insert_mixed(vma, vmf->address, __pfn_to_pfn_t(pfn, PFN_DEV));
out_unlock:
 mutex_unlock(&msm_obj->lock);
out:
 return ret;
}
