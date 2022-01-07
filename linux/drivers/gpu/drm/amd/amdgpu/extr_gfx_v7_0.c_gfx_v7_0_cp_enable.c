
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int gfx_v7_0_cp_compute_enable (struct amdgpu_device*,int) ;
 int gfx_v7_0_cp_gfx_enable (struct amdgpu_device*,int) ;

__attribute__((used)) static void gfx_v7_0_cp_enable(struct amdgpu_device *adev, bool enable)
{
 gfx_v7_0_cp_gfx_enable(adev, enable);
 gfx_v7_0_cp_compute_enable(adev, enable);
}
