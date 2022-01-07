
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;
typedef enum amd_clockgating_state { ____Placeholder_amd_clockgating_state } amd_clockgating_state ;


 int AMD_CG_STATE_GATE ;
 int cik_enable_sdma_mgcg (struct amdgpu_device*,int) ;
 int cik_enable_sdma_mgls (struct amdgpu_device*,int) ;

__attribute__((used)) static int cik_sdma_set_clockgating_state(void *handle,
       enum amd_clockgating_state state)
{
 bool gate = 0;
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 if (state == AMD_CG_STATE_GATE)
  gate = 1;

 cik_enable_sdma_mgcg(adev, gate);
 cik_enable_sdma_mgls(adev, gate);

 return 0;
}
