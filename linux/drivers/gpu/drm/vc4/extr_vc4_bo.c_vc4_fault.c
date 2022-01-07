
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_fault_t ;
struct vm_fault {struct vm_area_struct* vma; } ;
struct vm_area_struct {struct drm_gem_object* vm_private_data; } ;
struct vc4_bo {scalar_t__ madv; int madv_lock; } ;
struct drm_gem_object {int dummy; } ;


 int VM_FAULT_SIGBUS ;
 int WARN_ON (int) ;
 scalar_t__ __VC4_MADV_PURGED ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct vc4_bo* to_vc4_bo (struct drm_gem_object*) ;

vm_fault_t vc4_fault(struct vm_fault *vmf)
{
 struct vm_area_struct *vma = vmf->vma;
 struct drm_gem_object *obj = vma->vm_private_data;
 struct vc4_bo *bo = to_vc4_bo(obj);




 mutex_lock(&bo->madv_lock);
 WARN_ON(bo->madv != __VC4_MADV_PURGED);
 mutex_unlock(&bo->madv_lock);

 return VM_FAULT_SIGBUS;
}
