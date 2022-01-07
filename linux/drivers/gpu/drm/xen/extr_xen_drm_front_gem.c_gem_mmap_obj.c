
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xen_gem_object {int num_pages; int pages; } ;
struct vm_area_struct {int vm_flags; int vm_page_prot; scalar_t__ vm_pgoff; } ;


 int DRM_ERROR (char*,int) ;
 int VM_MIXEDMAP ;
 int VM_PFNMAP ;
 int vm_get_page_prot (int ) ;
 int vm_map_pages (struct vm_area_struct*,int ,int ) ;

__attribute__((used)) static int gem_mmap_obj(struct xen_gem_object *xen_obj,
   struct vm_area_struct *vma)
{
 int ret;






 vma->vm_flags &= ~VM_PFNMAP;
 vma->vm_flags |= VM_MIXEDMAP;
 vma->vm_pgoff = 0;







 vma->vm_page_prot = vm_get_page_prot(vma->vm_flags);
 ret = vm_map_pages(vma, xen_obj->pages, xen_obj->num_pages);
 if (ret < 0)
  DRM_ERROR("Failed to map pages into vma: %d\n", ret);

 return ret;
}
