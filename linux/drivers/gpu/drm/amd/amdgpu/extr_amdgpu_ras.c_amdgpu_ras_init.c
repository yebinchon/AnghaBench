
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ras_manager {int dummy; } ;
struct amdgpu_ras {int supported; int hw_supported; int flags; int head; scalar_t__ features; struct ras_manager* objs; } ;
struct TYPE_4__ {TYPE_1__* funcs; } ;
struct amdgpu_device {TYPE_2__ umc; } ;
struct TYPE_3__ {int (* ras_init ) (struct amdgpu_device*) ;} ;


 int AMDGPU_RAS_BLOCK_COUNT ;
 int AMDGPU_RAS_BLOCK_MASK ;
 int DRM_INFO (char*,int ,int ) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int RAS_DEFAULT_FLAGS ;
 int __GFP_ZERO ;
 int amdgpu_ras_check_supported (struct amdgpu_device*,int *,int *) ;
 scalar_t__ amdgpu_ras_fs_init (struct amdgpu_device*) ;
 struct amdgpu_ras* amdgpu_ras_get_context (struct amdgpu_device*) ;
 int amdgpu_ras_mask ;
 int amdgpu_ras_recovery_fini (struct amdgpu_device*) ;
 scalar_t__ amdgpu_ras_recovery_init (struct amdgpu_device*) ;
 int amdgpu_ras_set_context (struct amdgpu_device*,struct amdgpu_ras*) ;
 int kfree (struct amdgpu_ras*) ;
 struct amdgpu_ras* kmalloc (int,int) ;
 int stub1 (struct amdgpu_device*) ;

int amdgpu_ras_init(struct amdgpu_device *adev)
{
 struct amdgpu_ras *con = amdgpu_ras_get_context(adev);

 if (con)
  return 0;

 con = kmalloc(sizeof(struct amdgpu_ras) +
   sizeof(struct ras_manager) * AMDGPU_RAS_BLOCK_COUNT,
   GFP_KERNEL|__GFP_ZERO);
 if (!con)
  return -ENOMEM;

 con->objs = (struct ras_manager *)(con + 1);

 amdgpu_ras_set_context(adev, con);

 amdgpu_ras_check_supported(adev, &con->hw_supported,
   &con->supported);
 if (!con->hw_supported) {
  amdgpu_ras_set_context(adev, ((void*)0));
  kfree(con);
  return 0;
 }

 con->features = 0;
 INIT_LIST_HEAD(&con->head);

 con->flags = RAS_DEFAULT_FLAGS;

 if (amdgpu_ras_recovery_init(adev))
  goto recovery_out;

 amdgpu_ras_mask &= AMDGPU_RAS_BLOCK_MASK;

 if (amdgpu_ras_fs_init(adev))
  goto fs_out;


 if (adev->umc.funcs->ras_init)
  adev->umc.funcs->ras_init(adev);

 DRM_INFO("RAS INFO: ras initialized successfully, "
   "hardware ability[%x] ras_mask[%x]\n",
   con->hw_supported, con->supported);
 return 0;
fs_out:
 amdgpu_ras_recovery_fini(adev);
recovery_out:
 amdgpu_ras_set_context(adev, ((void*)0));
 kfree(con);

 return -EINVAL;
}
