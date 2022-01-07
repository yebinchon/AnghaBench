
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int CGCG_CGTT_LOCAL0_MASK ;
 int CGCG_CGTT_LOCAL1_MASK ;
 int CGTS_SM_CTRL_REG ;
 int CGTS_SM_CTRL_REG_DISABLE ;
 int CGTS_SM_CTRL_REG_ENABLE ;
 int CG_CGTT_LOCAL_0 ;
 int CG_CGTT_LOCAL_1 ;
 int RREG32_CG (int ) ;
 int WREG32 (int ,int ) ;
 int WREG32_CG (int ,int) ;

__attribute__((used)) static void trinity_mg_clockgating_enable(struct radeon_device *rdev,
       bool enable)
{
 u32 local0;
 u32 local1;

 if (enable) {
  local0 = RREG32_CG(CG_CGTT_LOCAL_0);
  local1 = RREG32_CG(CG_CGTT_LOCAL_1);

  WREG32_CG(CG_CGTT_LOCAL_0,
     (0x00380000 & CGCG_CGTT_LOCAL0_MASK) | (local0 & ~CGCG_CGTT_LOCAL0_MASK) );
  WREG32_CG(CG_CGTT_LOCAL_1,
     (0x0E000000 & CGCG_CGTT_LOCAL1_MASK) | (local1 & ~CGCG_CGTT_LOCAL1_MASK) );

  WREG32(CGTS_SM_CTRL_REG, CGTS_SM_CTRL_REG_ENABLE);
 } else {
  WREG32(CGTS_SM_CTRL_REG, CGTS_SM_CTRL_REG_DISABLE);

  local0 = RREG32_CG(CG_CGTT_LOCAL_0);
  local1 = RREG32_CG(CG_CGTT_LOCAL_1);

  WREG32_CG(CG_CGTT_LOCAL_0,
     CGCG_CGTT_LOCAL0_MASK | (local0 & ~CGCG_CGTT_LOCAL0_MASK) );
  WREG32_CG(CG_CGTT_LOCAL_1,
     CGCG_CGTT_LOCAL1_MASK | (local1 & ~CGCG_CGTT_LOCAL1_MASK) );
 }
}
