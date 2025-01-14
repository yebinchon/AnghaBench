
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_fault_t ;
struct vm_fault {size_t address; struct vm_area_struct* vma; } ;
struct vm_area_struct {size_t vm_start; struct drm_gem_object* vm_private_data; } ;
struct tegra_bo {struct page** pages; } ;
struct page {int dummy; } ;
struct drm_gem_object {int dummy; } ;
typedef size_t pgoff_t ;


 size_t PAGE_SHIFT ;
 int VM_FAULT_SIGBUS ;
 struct tegra_bo* to_tegra_bo (struct drm_gem_object*) ;
 int vmf_insert_page (struct vm_area_struct*,size_t,struct page*) ;

__attribute__((used)) static vm_fault_t tegra_bo_fault(struct vm_fault *vmf)
{
 struct vm_area_struct *vma = vmf->vma;
 struct drm_gem_object *gem = vma->vm_private_data;
 struct tegra_bo *bo = to_tegra_bo(gem);
 struct page *page;
 pgoff_t offset;

 if (!bo->pages)
  return VM_FAULT_SIGBUS;

 offset = (vmf->address - vma->vm_start) >> PAGE_SHIFT;
 page = bo->pages[offset];

 return vmf_insert_page(vma, vmf->address, page);
}
