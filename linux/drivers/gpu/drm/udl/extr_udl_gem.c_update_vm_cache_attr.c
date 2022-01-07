
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; int vm_page_prot; } ;
struct udl_gem_object {int flags; } ;


 int DRM_DEBUG_KMS (char*,int) ;
 int UDL_BO_CACHEABLE ;
 int UDL_BO_WC ;
 int pgprot_noncached (int ) ;
 int pgprot_writecombine (int ) ;
 int vm_get_page_prot (int ) ;

__attribute__((used)) static void update_vm_cache_attr(struct udl_gem_object *obj,
     struct vm_area_struct *vma)
{
 DRM_DEBUG_KMS("flags = 0x%x\n", obj->flags);


 if (obj->flags & UDL_BO_CACHEABLE) {
  vma->vm_page_prot = vm_get_page_prot(vma->vm_flags);
 } else if (obj->flags & UDL_BO_WC) {
  vma->vm_page_prot =
   pgprot_writecombine(vm_get_page_prot(vma->vm_flags));
 } else {
  vma->vm_page_prot =
   pgprot_noncached(vm_get_page_prot(vma->vm_flags));
 }
}
