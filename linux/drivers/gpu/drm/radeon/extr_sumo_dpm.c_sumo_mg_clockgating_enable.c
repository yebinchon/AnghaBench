
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int CGCG_CGTT_LOCAL0_MASK ;
 int CGCG_CGTT_LOCAL1_MASK ;
 int CG_CGTT_LOCAL_0 ;
 int CG_CGTT_LOCAL_1 ;
 int RREG32 (int ) ;
 int WREG32 (int ,int) ;

__attribute__((used)) static void sumo_mg_clockgating_enable(struct radeon_device *rdev, bool enable)
{
 u32 local0;
 u32 local1;

 local0 = RREG32(CG_CGTT_LOCAL_0);
 local1 = RREG32(CG_CGTT_LOCAL_1);

 if (enable) {
  WREG32(CG_CGTT_LOCAL_0, (0 & CGCG_CGTT_LOCAL0_MASK) | (local0 & ~CGCG_CGTT_LOCAL0_MASK) );
  WREG32(CG_CGTT_LOCAL_1, (0 & CGCG_CGTT_LOCAL1_MASK) | (local1 & ~CGCG_CGTT_LOCAL1_MASK) );
 } else {
  WREG32(CG_CGTT_LOCAL_0, (0xFFFFFFFF & CGCG_CGTT_LOCAL0_MASK) | (local0 & ~CGCG_CGTT_LOCAL0_MASK) );
  WREG32(CG_CGTT_LOCAL_1, (0xFFFFCFFF & CGCG_CGTT_LOCAL1_MASK) | (local1 & ~CGCG_CGTT_LOCAL1_MASK) );
 }
}
