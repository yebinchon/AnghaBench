
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct drm_file {struct amdgpu_fpriv* driver_priv; } ;
struct drm_device {int dev; struct amdgpu_device* dev_private; } ;
struct amdgpu_fpriv {int vm; int ctx_mgr; int bo_list_handles; int bo_list_lock; int csa_va; int prt_va; } ;
struct TYPE_2__ {int csa_obj; } ;
struct amdgpu_device {TYPE_1__ virt; int dev; int delayed_init_work; } ;


 int AMDGPU_CSA_SIZE ;
 int AMDGPU_GMC_HOLE_MASK ;
 int AMDGPU_VM_CONTEXT_GFX ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int amdgpu_csa_vaddr (struct amdgpu_device*) ;
 int amdgpu_ctx_mgr_init (int *) ;
 int amdgpu_map_static_csa (struct amdgpu_device*,int *,int ,int *,int,int ) ;
 scalar_t__ amdgpu_mcbp ;
 int amdgpu_pasid_alloc (int) ;
 int amdgpu_pasid_free (int) ;
 scalar_t__ amdgpu_sriov_vf (struct amdgpu_device*) ;
 int amdgpu_vm_bo_add (struct amdgpu_device*,int *,int *) ;
 int amdgpu_vm_fini (struct amdgpu_device*,int *) ;
 int amdgpu_vm_init (struct amdgpu_device*,int *,int ,int) ;
 int dev_warn (int ,char*) ;
 int flush_delayed_work (int *) ;
 int idr_init (int *) ;
 int kfree (struct amdgpu_fpriv*) ;
 struct amdgpu_fpriv* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 scalar_t__ unlikely (int) ;

int amdgpu_driver_open_kms(struct drm_device *dev, struct drm_file *file_priv)
{
 struct amdgpu_device *adev = dev->dev_private;
 struct amdgpu_fpriv *fpriv;
 int r, pasid;


 flush_delayed_work(&adev->delayed_init_work);

 file_priv->driver_priv = ((void*)0);

 r = pm_runtime_get_sync(dev->dev);
 if (r < 0)
  return r;

 fpriv = kzalloc(sizeof(*fpriv), GFP_KERNEL);
 if (unlikely(!fpriv)) {
  r = -ENOMEM;
  goto out_suspend;
 }

 pasid = amdgpu_pasid_alloc(16);
 if (pasid < 0) {
  dev_warn(adev->dev, "No more PASIDs available!");
  pasid = 0;
 }
 r = amdgpu_vm_init(adev, &fpriv->vm, AMDGPU_VM_CONTEXT_GFX, pasid);
 if (r)
  goto error_pasid;

 fpriv->prt_va = amdgpu_vm_bo_add(adev, &fpriv->vm, ((void*)0));
 if (!fpriv->prt_va) {
  r = -ENOMEM;
  goto error_vm;
 }

 if (amdgpu_mcbp || amdgpu_sriov_vf(adev)) {
  uint64_t csa_addr = amdgpu_csa_vaddr(adev) & AMDGPU_GMC_HOLE_MASK;

  r = amdgpu_map_static_csa(adev, &fpriv->vm, adev->virt.csa_obj,
      &fpriv->csa_va, csa_addr, AMDGPU_CSA_SIZE);
  if (r)
   goto error_vm;
 }

 mutex_init(&fpriv->bo_list_lock);
 idr_init(&fpriv->bo_list_handles);

 amdgpu_ctx_mgr_init(&fpriv->ctx_mgr);

 file_priv->driver_priv = fpriv;
 goto out_suspend;

error_vm:
 amdgpu_vm_fini(adev, &fpriv->vm);

error_pasid:
 if (pasid)
  amdgpu_pasid_free(pasid);

 kfree(fpriv);

out_suspend:
 pm_runtime_mark_last_busy(dev->dev);
 pm_runtime_put_autosuspend(dev->dev);

 return r;
}
