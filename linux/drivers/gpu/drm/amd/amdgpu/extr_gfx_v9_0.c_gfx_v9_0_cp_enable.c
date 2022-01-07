
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {scalar_t__ asic_type; } ;


 scalar_t__ CHIP_ARCTURUS ;
 int gfx_v9_0_cp_compute_enable (struct amdgpu_device*,int) ;
 int gfx_v9_0_cp_gfx_enable (struct amdgpu_device*,int) ;

__attribute__((used)) static void gfx_v9_0_cp_enable(struct amdgpu_device *adev, bool enable)
{
 if (adev->asic_type != CHIP_ARCTURUS)
  gfx_v9_0_cp_gfx_enable(adev, enable);
 gfx_v9_0_cp_compute_enable(adev, enable);
}
