
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int gfx_v7_0_cp_compute_load_microcode (struct amdgpu_device*) ;
 int gfx_v7_0_cp_gfx_load_microcode (struct amdgpu_device*) ;

__attribute__((used)) static int gfx_v7_0_cp_load_microcode(struct amdgpu_device *adev)
{
 int r;

 r = gfx_v7_0_cp_gfx_load_microcode(adev);
 if (r)
  return r;
 r = gfx_v7_0_cp_compute_load_microcode(adev);
 if (r)
  return r;

 return 0;
}
