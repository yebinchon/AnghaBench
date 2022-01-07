
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int op; } ;
union drm_amdgpu_vm {TYPE_1__ in; } ;
struct drm_file {struct amdgpu_fpriv* driver_priv; } ;
struct drm_device {struct amdgpu_device* dev_private; } ;
struct amdgpu_fpriv {int vm; } ;
struct amdgpu_device {int dummy; } ;


 int AMDGPU_GFXHUB_0 ;


 int EINVAL ;
 int amdgpu_vmid_alloc_reserved (struct amdgpu_device*,int *,int ) ;
 int amdgpu_vmid_free_reserved (struct amdgpu_device*,int *,int ) ;

int amdgpu_vm_ioctl(struct drm_device *dev, void *data, struct drm_file *filp)
{
 union drm_amdgpu_vm *args = data;
 struct amdgpu_device *adev = dev->dev_private;
 struct amdgpu_fpriv *fpriv = filp->driver_priv;
 int r;

 switch (args->in.op) {
 case 129:

  r = amdgpu_vmid_alloc_reserved(adev, &fpriv->vm, AMDGPU_GFXHUB_0);
  if (r)
   return r;
  break;
 case 128:
  amdgpu_vmid_free_reserved(adev, &fpriv->vm, AMDGPU_GFXHUB_0);
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
