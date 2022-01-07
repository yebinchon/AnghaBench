
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int dummy; } ;


 int gfx_v10_0_get_wgp_active_bitmap_per_sh (struct amdgpu_device*) ;

__attribute__((used)) static u32 gfx_v10_0_get_cu_active_bitmap_per_sh(struct amdgpu_device *adev)
{
 u32 wgp_idx, wgp_active_bitmap;
 u32 cu_bitmap_per_wgp, cu_active_bitmap;

 wgp_active_bitmap = gfx_v10_0_get_wgp_active_bitmap_per_sh(adev);
 cu_active_bitmap = 0;

 for (wgp_idx = 0; wgp_idx < 16; wgp_idx++) {

  cu_bitmap_per_wgp = 3 << (2 * wgp_idx);
  if (wgp_active_bitmap & (1 << wgp_idx))
   cu_active_bitmap |= cu_bitmap_per_wgp;
 }

 return cu_active_bitmap;
}
