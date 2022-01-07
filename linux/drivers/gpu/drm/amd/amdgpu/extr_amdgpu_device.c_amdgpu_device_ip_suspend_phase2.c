
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int pp_handle; TYPE_3__* pp_funcs; } ;
struct amdgpu_device {int num_ip_blocks; TYPE_6__* ip_blocks; int mp1_state; TYPE_4__ powerplay; } ;
struct TYPE_11__ {int hw; int valid; } ;
struct TYPE_12__ {TYPE_5__ status; TYPE_2__* version; } ;
struct TYPE_9__ {int (* set_mp1_state ) (int ,int ) ;} ;
struct TYPE_8__ {scalar_t__ type; TYPE_1__* funcs; } ;
struct TYPE_7__ {int (* suspend ) (struct amdgpu_device*) ;int name; } ;


 scalar_t__ AMD_IP_BLOCK_TYPE_DCE ;
 scalar_t__ AMD_IP_BLOCK_TYPE_SMC ;
 int DRM_ERROR (char*,int ,int) ;
 scalar_t__ is_support_sw_smu (struct amdgpu_device*) ;
 int stub1 (struct amdgpu_device*) ;
 int stub2 (int ,int ) ;

__attribute__((used)) static int amdgpu_device_ip_suspend_phase2(struct amdgpu_device *adev)
{
 int i, r;

 for (i = adev->num_ip_blocks - 1; i >= 0; i--) {
  if (!adev->ip_blocks[i].status.valid)
   continue;

  if (adev->ip_blocks[i].version->type == AMD_IP_BLOCK_TYPE_DCE)
   continue;

  r = adev->ip_blocks[i].version->funcs->suspend(adev);

  if (r) {
   DRM_ERROR("suspend of IP block <%s> failed %d\n",
      adev->ip_blocks[i].version->funcs->name, r);
  }
  adev->ip_blocks[i].status.hw = 0;

  if (adev->ip_blocks[i].version->type == AMD_IP_BLOCK_TYPE_SMC) {
   if (is_support_sw_smu(adev)) {

   } else if (adev->powerplay.pp_funcs &&
        adev->powerplay.pp_funcs->set_mp1_state) {
    r = adev->powerplay.pp_funcs->set_mp1_state(
     adev->powerplay.pp_handle,
     adev->mp1_state);
    if (r) {
     DRM_ERROR("SMC failed to set mp1 state %d, %d\n",
        adev->mp1_state, r);
     return r;
    }
   }
  }

  adev->ip_blocks[i].status.hw = 0;
 }

 return 0;
}
