
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct amdgpu_device {TYPE_1__* df_funcs; } ;
struct TYPE_2__ {int (* sw_init ) (struct amdgpu_device*) ;} ;


 scalar_t__ amdgpu_sriov_vf (struct amdgpu_device*) ;
 int stub1 (struct amdgpu_device*) ;
 int xgpu_ai_mailbox_add_irq_id (struct amdgpu_device*) ;

__attribute__((used)) static int soc15_common_sw_init(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 if (amdgpu_sriov_vf(adev))
  xgpu_ai_mailbox_add_irq_id(adev);

 adev->df_funcs->sw_init(adev);

 return 0;
}
