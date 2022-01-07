
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vm_area_struct {unsigned long vm_end; unsigned long vm_start; int vm_flags; int vm_page_prot; struct drm_gem_object* vm_private_data; scalar_t__ vm_ops; } ;
struct drm_gem_object {TYPE_1__* funcs; struct drm_device* dev; } ;
struct drm_device {TYPE_2__* driver; } ;
struct TYPE_4__ {scalar_t__ gem_vm_ops; } ;
struct TYPE_3__ {scalar_t__ vm_ops; } ;


 int EINVAL ;
 int VM_DONTDUMP ;
 int VM_DONTEXPAND ;
 int VM_IO ;
 int VM_PFNMAP ;
 int drm_gem_object_get (struct drm_gem_object*) ;
 int pgprot_decrypted (int ) ;
 int pgprot_writecombine (int ) ;
 int vm_get_page_prot (int) ;

int drm_gem_mmap_obj(struct drm_gem_object *obj, unsigned long obj_size,
       struct vm_area_struct *vma)
{
 struct drm_device *dev = obj->dev;


 if (obj_size < vma->vm_end - vma->vm_start)
  return -EINVAL;

 if (obj->funcs && obj->funcs->vm_ops)
  vma->vm_ops = obj->funcs->vm_ops;
 else if (dev->driver->gem_vm_ops)
  vma->vm_ops = dev->driver->gem_vm_ops;
 else
  return -EINVAL;

 vma->vm_flags |= VM_IO | VM_PFNMAP | VM_DONTEXPAND | VM_DONTDUMP;
 vma->vm_private_data = obj;
 vma->vm_page_prot = pgprot_writecombine(vm_get_page_prot(vma->vm_flags));
 vma->vm_page_prot = pgprot_decrypted(vma->vm_page_prot);







 drm_gem_object_get(obj);

 return 0;
}
