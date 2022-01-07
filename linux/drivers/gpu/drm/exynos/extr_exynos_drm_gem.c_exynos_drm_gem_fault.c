
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_fault_t ;
struct vm_fault {size_t address; struct vm_area_struct* vma; } ;
struct vm_area_struct {size_t vm_start; struct drm_gem_object* vm_private_data; } ;
struct exynos_drm_gem {size_t size; int * pages; } ;
struct drm_gem_object {int dummy; } ;
typedef size_t pgoff_t ;


 int DRM_ERROR (char*) ;
 size_t PAGE_SHIFT ;
 int PFN_DEV ;
 int VM_FAULT_SIGBUS ;
 int __pfn_to_pfn_t (unsigned long,int ) ;
 unsigned long page_to_pfn (int ) ;
 struct exynos_drm_gem* to_exynos_gem (struct drm_gem_object*) ;
 int vmf_insert_mixed (struct vm_area_struct*,size_t,int ) ;

vm_fault_t exynos_drm_gem_fault(struct vm_fault *vmf)
{
 struct vm_area_struct *vma = vmf->vma;
 struct drm_gem_object *obj = vma->vm_private_data;
 struct exynos_drm_gem *exynos_gem = to_exynos_gem(obj);
 unsigned long pfn;
 pgoff_t page_offset;

 page_offset = (vmf->address - vma->vm_start) >> PAGE_SHIFT;

 if (page_offset >= (exynos_gem->size >> PAGE_SHIFT)) {
  DRM_ERROR("invalid page offset\n");
  return VM_FAULT_SIGBUS;
 }

 pfn = page_to_pfn(exynos_gem->pages[page_offset]);
 return vmf_insert_mixed(vma, vmf->address,
   __pfn_to_pfn_t(pfn, PFN_DEV));
}
