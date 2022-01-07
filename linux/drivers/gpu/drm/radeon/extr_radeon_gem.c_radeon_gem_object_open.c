
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_vm {int dummy; } ;
struct radeon_fpriv {struct radeon_vm vm; } ;
struct radeon_device {scalar_t__ family; int accel_working; } ;
struct radeon_bo_va {int ref_count; } ;
struct radeon_bo {struct radeon_device* rdev; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {struct radeon_fpriv* driver_priv; } ;


 scalar_t__ CHIP_CAYMAN ;
 struct radeon_bo* gem_to_radeon_bo (struct drm_gem_object*) ;
 int radeon_bo_reserve (struct radeon_bo*,int) ;
 int radeon_bo_unreserve (struct radeon_bo*) ;
 struct radeon_bo_va* radeon_vm_bo_add (struct radeon_device*,struct radeon_vm*,struct radeon_bo*) ;
 struct radeon_bo_va* radeon_vm_bo_find (struct radeon_vm*,struct radeon_bo*) ;

int radeon_gem_object_open(struct drm_gem_object *obj, struct drm_file *file_priv)
{
 struct radeon_bo *rbo = gem_to_radeon_bo(obj);
 struct radeon_device *rdev = rbo->rdev;
 struct radeon_fpriv *fpriv = file_priv->driver_priv;
 struct radeon_vm *vm = &fpriv->vm;
 struct radeon_bo_va *bo_va;
 int r;

 if ((rdev->family < CHIP_CAYMAN) ||
     (!rdev->accel_working)) {
  return 0;
 }

 r = radeon_bo_reserve(rbo, 0);
 if (r) {
  return r;
 }

 bo_va = radeon_vm_bo_find(vm, rbo);
 if (!bo_va) {
  bo_va = radeon_vm_bo_add(rdev, vm, rbo);
 } else {
  ++bo_va->ref_count;
 }
 radeon_bo_unreserve(rbo);

 return 0;
}
