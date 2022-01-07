
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; int vm_page_prot; int vm_file; scalar_t__ vm_pgoff; } ;
struct msm_gem_object {int flags; } ;
struct drm_gem_object {int filp; } ;


 int MSM_BO_UNCACHED ;
 int MSM_BO_WC ;
 int VM_MIXEDMAP ;
 int VM_PFNMAP ;
 int fput (int ) ;
 int get_file (int ) ;
 int pgprot_noncached (int ) ;
 int pgprot_writecombine (int ) ;
 struct msm_gem_object* to_msm_bo (struct drm_gem_object*) ;
 int vm_get_page_prot (int ) ;

int msm_gem_mmap_obj(struct drm_gem_object *obj,
  struct vm_area_struct *vma)
{
 struct msm_gem_object *msm_obj = to_msm_bo(obj);

 vma->vm_flags &= ~VM_PFNMAP;
 vma->vm_flags |= VM_MIXEDMAP;

 if (msm_obj->flags & MSM_BO_WC) {
  vma->vm_page_prot = pgprot_writecombine(vm_get_page_prot(vma->vm_flags));
 } else if (msm_obj->flags & MSM_BO_UNCACHED) {
  vma->vm_page_prot = pgprot_noncached(vm_get_page_prot(vma->vm_flags));
 } else {





  fput(vma->vm_file);
  get_file(obj->filp);
  vma->vm_pgoff = 0;
  vma->vm_file = obj->filp;

  vma->vm_page_prot = vm_get_page_prot(vma->vm_flags);
 }

 return 0;
}
