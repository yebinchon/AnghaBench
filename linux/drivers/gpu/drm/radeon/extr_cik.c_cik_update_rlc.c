
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct radeon_device {int dummy; } ;


 int RLC_CNTL ;
 scalar_t__ RREG32 (int ) ;
 int WREG32 (int ,scalar_t__) ;

__attribute__((used)) static void cik_update_rlc(struct radeon_device *rdev, u32 rlc)
{
 u32 tmp;

 tmp = RREG32(RLC_CNTL);
 if (tmp != rlc)
  WREG32(RLC_CNTL, rlc);
}
