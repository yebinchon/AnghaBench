
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct radeon_device {int dummy; } ;


 int RADEON_CP_CSQ_CNTL ;
 int RADEON_CP_RB_CNTL ;
 int RADEON_SCRATCH_UMSK ;
 scalar_t__ RREG32 (int ) ;
 int WREG32 (int ,int ) ;

void r100_restore_sanity(struct radeon_device *rdev)
{
 u32 tmp;

 tmp = RREG32(RADEON_CP_CSQ_CNTL);
 if (tmp) {
  WREG32(RADEON_CP_CSQ_CNTL, 0);
 }
 tmp = RREG32(RADEON_CP_RB_CNTL);
 if (tmp) {
  WREG32(RADEON_CP_RB_CNTL, 0);
 }
 tmp = RREG32(RADEON_SCRATCH_UMSK);
 if (tmp) {
  WREG32(RADEON_SCRATCH_UMSK, 0);
 }
}
