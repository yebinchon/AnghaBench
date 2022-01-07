
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_fault_t ;
struct vm_fault {size_t address; struct vm_area_struct* vma; } ;
struct vm_area_struct {size_t vm_start; struct drm_gem_object* vm_private_data; } ;
struct lima_bo {int * pages; } ;
struct drm_gem_object {int dummy; } ;
typedef size_t pgoff_t ;
typedef int pfn_t ;


 size_t PAGE_SHIFT ;
 int PFN_DEV ;
 int __pfn_to_pfn_t (int ,int ) ;
 int page_to_pfn (int ) ;
 struct lima_bo* to_lima_bo (struct drm_gem_object*) ;
 int vmf_insert_mixed (struct vm_area_struct*,size_t,int ) ;

__attribute__((used)) static vm_fault_t lima_gem_fault(struct vm_fault *vmf)
{
 struct vm_area_struct *vma = vmf->vma;
 struct drm_gem_object *obj = vma->vm_private_data;
 struct lima_bo *bo = to_lima_bo(obj);
 pfn_t pfn;
 pgoff_t pgoff;


 pgoff = (vmf->address - vma->vm_start) >> PAGE_SHIFT;
 pfn = __pfn_to_pfn_t(page_to_pfn(bo->pages[pgoff]), PFN_DEV);

 return vmf_insert_mixed(vma, vmf->address, pfn);
}
