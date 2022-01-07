
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct amdgpu_ring {int dummy; } ;
struct TYPE_4__ {int num_compute_rings; struct amdgpu_ring* compute_ring; struct amdgpu_ring* gfx_ring; } ;
struct TYPE_3__ {scalar_t__ load_type; } ;
struct amdgpu_device {int flags; scalar_t__ asic_type; TYPE_2__ gfx; TYPE_1__ firmware; } ;


 scalar_t__ AMDGPU_FW_LOAD_PSP ;
 int AMD_IS_APU ;
 scalar_t__ CHIP_ARCTURUS ;
 int amdgpu_ring_test_helper (struct amdgpu_ring*) ;
 int gfx_v9_0_cp_compute_load_microcode (struct amdgpu_device*) ;
 int gfx_v9_0_cp_gfx_load_microcode (struct amdgpu_device*) ;
 int gfx_v9_0_cp_gfx_resume (struct amdgpu_device*) ;
 int gfx_v9_0_enable_gui_idle_interrupt (struct amdgpu_device*,int) ;
 int gfx_v9_0_kcq_resume (struct amdgpu_device*) ;
 int gfx_v9_0_kiq_resume (struct amdgpu_device*) ;

__attribute__((used)) static int gfx_v9_0_cp_resume(struct amdgpu_device *adev)
{
 int r, i;
 struct amdgpu_ring *ring;

 if (!(adev->flags & AMD_IS_APU))
  gfx_v9_0_enable_gui_idle_interrupt(adev, 0);

 if (adev->firmware.load_type != AMDGPU_FW_LOAD_PSP) {
  if (adev->asic_type != CHIP_ARCTURUS) {

   r = gfx_v9_0_cp_gfx_load_microcode(adev);
   if (r)
    return r;
  }

  r = gfx_v9_0_cp_compute_load_microcode(adev);
  if (r)
   return r;
 }

 r = gfx_v9_0_kiq_resume(adev);
 if (r)
  return r;

 if (adev->asic_type != CHIP_ARCTURUS) {
  r = gfx_v9_0_cp_gfx_resume(adev);
  if (r)
   return r;
 }

 r = gfx_v9_0_kcq_resume(adev);
 if (r)
  return r;

 if (adev->asic_type != CHIP_ARCTURUS) {
  ring = &adev->gfx.gfx_ring[0];
  r = amdgpu_ring_test_helper(ring);
  if (r)
   return r;
 }

 for (i = 0; i < adev->gfx.num_compute_rings; i++) {
  ring = &adev->gfx.compute_ring[i];
  amdgpu_ring_test_helper(ring);
 }

 gfx_v9_0_enable_gui_idle_interrupt(adev, 1);

 return 0;
}
