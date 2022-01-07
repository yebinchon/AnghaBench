
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdgpu_device {int dummy; } ;


 int RREG32 (int ) ;
 int SQ_IND_INDEX__AUTO_INCR_MASK ;
 int SQ_IND_INDEX__FORCE_READ_MASK ;
 int SQ_IND_INDEX__INDEX__SHIFT ;
 int SQ_IND_INDEX__SIMD_ID__SHIFT ;
 int SQ_IND_INDEX__THREAD_ID__SHIFT ;
 int SQ_IND_INDEX__WAVE_ID__SHIFT ;
 int WREG32 (int ,int) ;
 int mmSQ_IND_DATA ;
 int mmSQ_IND_INDEX ;

__attribute__((used)) static void wave_read_regs(struct amdgpu_device *adev, uint32_t simd,
      uint32_t wave, uint32_t thread,
      uint32_t regno, uint32_t num, uint32_t *out)
{
 WREG32(mmSQ_IND_INDEX,
  (wave << SQ_IND_INDEX__WAVE_ID__SHIFT) |
  (simd << SQ_IND_INDEX__SIMD_ID__SHIFT) |
  (regno << SQ_IND_INDEX__INDEX__SHIFT) |
  (thread << SQ_IND_INDEX__THREAD_ID__SHIFT) |
  (SQ_IND_INDEX__FORCE_READ_MASK) |
  (SQ_IND_INDEX__AUTO_INCR_MASK));
 while (num--)
  *(out++) = RREG32(mmSQ_IND_DATA);
}
