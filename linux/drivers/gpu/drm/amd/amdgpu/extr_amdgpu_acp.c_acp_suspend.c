
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int acp_cell; } ;
struct amdgpu_device {TYPE_1__ acp; } ;


 int AMD_IP_BLOCK_TYPE_ACP ;
 int amdgpu_dpm_set_powergating_by_smu (struct amdgpu_device*,int ,int) ;

__attribute__((used)) static int acp_suspend(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;


 if (!adev->acp.acp_cell)
  amdgpu_dpm_set_powergating_by_smu(adev, AMD_IP_BLOCK_TYPE_ACP, 0);
 return 0;
}
