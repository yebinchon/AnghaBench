
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct amdgpu_device {int dummy; } ;


 scalar_t__ SQIND_WAVE_VGPRS_OFFSET ;
 int wave_read_regs (struct amdgpu_device*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__*) ;

__attribute__((used)) static void gfx_v10_0_read_wave_vgprs(struct amdgpu_device *adev, uint32_t simd,
          uint32_t wave, uint32_t thread,
          uint32_t start, uint32_t size,
          uint32_t *dst)
{
 wave_read_regs(
  adev, wave, thread,
  start + SQIND_WAVE_VGPRS_OFFSET, size, dst);
}
