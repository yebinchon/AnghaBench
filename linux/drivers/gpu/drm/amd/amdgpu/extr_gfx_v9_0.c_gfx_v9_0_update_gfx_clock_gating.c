
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int gfx_v9_0_update_3d_clock_gating (struct amdgpu_device*,int) ;
 int gfx_v9_0_update_coarse_grain_clock_gating (struct amdgpu_device*,int) ;
 int gfx_v9_0_update_medium_grain_clock_gating (struct amdgpu_device*,int) ;

__attribute__((used)) static int gfx_v9_0_update_gfx_clock_gating(struct amdgpu_device *adev,
         bool enable)
{
 if (enable) {



  gfx_v9_0_update_medium_grain_clock_gating(adev, enable);

  gfx_v9_0_update_3d_clock_gating(adev, enable);

  gfx_v9_0_update_coarse_grain_clock_gating(adev, enable);
 } else {



  gfx_v9_0_update_coarse_grain_clock_gating(adev, enable);

  gfx_v9_0_update_3d_clock_gating(adev, enable);

  gfx_v9_0_update_medium_grain_clock_gating(adev, enable);
 }
 return 0;
}
