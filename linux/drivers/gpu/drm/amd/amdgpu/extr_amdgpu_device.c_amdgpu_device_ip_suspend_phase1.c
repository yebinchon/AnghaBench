
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct amdgpu_device {int num_ip_blocks; TYPE_4__* ip_blocks; } ;
struct TYPE_7__ {int hw; int valid; } ;
struct TYPE_8__ {TYPE_3__ status; TYPE_2__* version; } ;
struct TYPE_6__ {scalar_t__ type; TYPE_1__* funcs; } ;
struct TYPE_5__ {int (* suspend ) (struct amdgpu_device*) ;int name; } ;


 int AMD_CG_STATE_UNGATE ;
 scalar_t__ AMD_IP_BLOCK_TYPE_DCE ;
 int AMD_PG_STATE_UNGATE ;
 int DRM_ERROR (char*,int ,int) ;
 int amdgpu_device_set_cg_state (struct amdgpu_device*,int ) ;
 int amdgpu_device_set_pg_state (struct amdgpu_device*,int ) ;
 int stub1 (struct amdgpu_device*) ;

__attribute__((used)) static int amdgpu_device_ip_suspend_phase1(struct amdgpu_device *adev)
{
 int i, r;

 amdgpu_device_set_pg_state(adev, AMD_PG_STATE_UNGATE);
 amdgpu_device_set_cg_state(adev, AMD_CG_STATE_UNGATE);

 for (i = adev->num_ip_blocks - 1; i >= 0; i--) {
  if (!adev->ip_blocks[i].status.valid)
   continue;

  if (adev->ip_blocks[i].version->type == AMD_IP_BLOCK_TYPE_DCE) {

   r = adev->ip_blocks[i].version->funcs->suspend(adev);

   if (r) {
    DRM_ERROR("suspend of IP block <%s> failed %d\n",
       adev->ip_blocks[i].version->funcs->name, r);
    return r;
   }
   adev->ip_blocks[i].status.hw = 0;
  }
 }

 return 0;
}
