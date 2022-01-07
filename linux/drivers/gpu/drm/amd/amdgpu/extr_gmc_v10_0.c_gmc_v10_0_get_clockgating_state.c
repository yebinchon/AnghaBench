
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int dummy; } ;


 int athub_v2_0_get_clockgating (struct amdgpu_device*,int *) ;
 int mmhub_v2_0_get_clockgating (struct amdgpu_device*,int *) ;

__attribute__((used)) static void gmc_v10_0_get_clockgating_state(void *handle, u32 *flags)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 mmhub_v2_0_get_clockgating(adev, flags);

 athub_v2_0_get_clockgating(adev, flags);
}
