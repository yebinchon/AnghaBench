
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int MC_SEQ_MISC0 ;
 int RREG32 (int ) ;

__attribute__((used)) static bool si_lbpw_supported(struct radeon_device *rdev)
{
 u32 tmp;


 tmp = RREG32(MC_SEQ_MISC0);
 if ((tmp & 0xF0000000) == 0xB0000000)
  return 1;
 return 0;
}
