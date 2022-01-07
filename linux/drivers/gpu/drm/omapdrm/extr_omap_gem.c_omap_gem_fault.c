
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_fault_t ;
struct vm_fault {struct vm_area_struct* vma; } ;
struct vm_area_struct {struct drm_gem_object* vm_private_data; } ;
struct omap_gem_object {int flags; int lock; } ;
struct drm_gem_object {int dummy; } ;


 int OMAP_BO_TILED ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int omap_gem_attach_pages (struct drm_gem_object*) ;
 int omap_gem_fault_1d (struct drm_gem_object*,struct vm_area_struct*,struct vm_fault*) ;
 int omap_gem_fault_2d (struct drm_gem_object*,struct vm_area_struct*,struct vm_fault*) ;
 struct omap_gem_object* to_omap_bo (struct drm_gem_object*) ;
 int vmf_error (int) ;

vm_fault_t omap_gem_fault(struct vm_fault *vmf)
{
 struct vm_area_struct *vma = vmf->vma;
 struct drm_gem_object *obj = vma->vm_private_data;
 struct omap_gem_object *omap_obj = to_omap_bo(obj);
 int err;
 vm_fault_t ret;




 mutex_lock(&omap_obj->lock);


 err = omap_gem_attach_pages(obj);
 if (err) {
  ret = vmf_error(err);
  goto fail;
 }







 if (omap_obj->flags & OMAP_BO_TILED)
  ret = omap_gem_fault_2d(obj, vma, vmf);
 else
  ret = omap_gem_fault_1d(obj, vma, vmf);


fail:
 mutex_unlock(&omap_obj->lock);
 return ret;
}
