
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int RREG32 (int const) ;
 int WREG32 (int const,int) ;

void btc_program_mgcg_hw_sequence(struct radeon_device *rdev,
      const u32 *sequence, u32 count)
{
 u32 i, length = count * 3;
 u32 tmp;

 for (i = 0; i < length; i+=3) {
  tmp = RREG32(sequence[i]);
  tmp &= ~sequence[i+2];
  tmp |= sequence[i+1] & sequence[i+2];
  WREG32(sequence[i], tmp);
 }
}
