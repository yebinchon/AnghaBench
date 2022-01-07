
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct radeon_vm {scalar_t__ ib_bo_va; } ;
struct radeon_fpriv {struct radeon_vm vm; } ;
struct TYPE_4__ {int bo; } ;
struct TYPE_3__ {int mutex; } ;
struct radeon_device {scalar_t__ family; TYPE_2__ ring_tmp_bo; scalar_t__ accel_working; TYPE_1__ gem; struct drm_file* cmask_filp; struct drm_file* hyperz_filp; } ;
struct drm_file {struct radeon_fpriv* driver_priv; } ;
struct drm_device {int dev; struct radeon_device* dev_private; } ;


 scalar_t__ CHIP_CAYMAN ;
 int kfree (struct radeon_fpriv*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int radeon_bo_reserve (int ,int) ;
 int radeon_bo_unreserve (int ) ;
 int radeon_uvd_free_handles (struct radeon_device*,struct drm_file*) ;
 int radeon_vce_free_handles (struct radeon_device*,struct drm_file*) ;
 int radeon_vm_bo_rmv (struct radeon_device*,scalar_t__) ;
 int radeon_vm_fini (struct radeon_device*,struct radeon_vm*) ;

void radeon_driver_postclose_kms(struct drm_device *dev,
     struct drm_file *file_priv)
{
 struct radeon_device *rdev = dev->dev_private;

 pm_runtime_get_sync(dev->dev);

 mutex_lock(&rdev->gem.mutex);
 if (rdev->hyperz_filp == file_priv)
  rdev->hyperz_filp = ((void*)0);
 if (rdev->cmask_filp == file_priv)
  rdev->cmask_filp = ((void*)0);
 mutex_unlock(&rdev->gem.mutex);

 radeon_uvd_free_handles(rdev, file_priv);
 radeon_vce_free_handles(rdev, file_priv);


 if (rdev->family >= CHIP_CAYMAN && file_priv->driver_priv) {
  struct radeon_fpriv *fpriv = file_priv->driver_priv;
  struct radeon_vm *vm = &fpriv->vm;
  int r;

  if (rdev->accel_working) {
   r = radeon_bo_reserve(rdev->ring_tmp_bo.bo, 0);
   if (!r) {
    if (vm->ib_bo_va)
     radeon_vm_bo_rmv(rdev, vm->ib_bo_va);
    radeon_bo_unreserve(rdev->ring_tmp_bo.bo);
   }
   radeon_vm_fini(rdev, vm);
  }

  kfree(fpriv);
  file_priv->driver_priv = ((void*)0);
 }
 pm_runtime_mark_last_busy(dev->dev);
 pm_runtime_put_autosuspend(dev->dev);
}
