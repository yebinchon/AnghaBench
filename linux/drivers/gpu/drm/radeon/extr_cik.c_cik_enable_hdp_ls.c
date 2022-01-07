
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int cg_flags; } ;


 int HDP_LS_ENABLE ;
 int HDP_MEM_POWER_LS ;
 int RADEON_CG_SUPPORT_HDP_LS ;
 int RREG32 (int ) ;
 int WREG32 (int ,int ) ;

__attribute__((used)) static void cik_enable_hdp_ls(struct radeon_device *rdev,
         bool enable)
{
 u32 orig, data;

 orig = data = RREG32(HDP_MEM_POWER_LS);

 if (enable && (rdev->cg_flags & RADEON_CG_SUPPORT_HDP_LS))
  data |= HDP_LS_ENABLE;
 else
  data &= ~HDP_LS_ENABLE;

 if (orig != data)
  WREG32(HDP_MEM_POWER_LS, data);
}
