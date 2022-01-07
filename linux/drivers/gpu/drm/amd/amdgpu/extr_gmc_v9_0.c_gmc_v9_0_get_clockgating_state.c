
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {scalar_t__ asic_type; } ;


 scalar_t__ CHIP_ARCTURUS ;
 int athub_v1_0_get_clockgating (struct amdgpu_device*,int *) ;
 int mmhub_v1_0_get_clockgating (struct amdgpu_device*,int *) ;
 int mmhub_v9_4_get_clockgating (struct amdgpu_device*,int *) ;

__attribute__((used)) static void gmc_v9_0_get_clockgating_state(void *handle, u32 *flags)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 if (adev->asic_type == CHIP_ARCTURUS)
  mmhub_v9_4_get_clockgating(adev, flags);
 else
  mmhub_v1_0_get_clockgating(adev, flags);

 athub_v1_0_get_clockgating(adev, flags);
}
