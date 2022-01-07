
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int cg_flags; } ;


 int MST_MEM_LS_EN ;
 int PCIE_CNTL2 ;
 int RADEON_CG_SUPPORT_BIF_LS ;
 int REPLAY_MEM_LS_EN ;
 int RREG32_PCIE_PORT (int ) ;
 int SLV_MEM_AGGRESSIVE_LS_EN ;
 int SLV_MEM_LS_EN ;
 int WREG32_PCIE_PORT (int ,int) ;

__attribute__((used)) static void cik_enable_bif_mgls(struct radeon_device *rdev,
          bool enable)
{
 u32 orig, data;

 orig = data = RREG32_PCIE_PORT(PCIE_CNTL2);

 if (enable && (rdev->cg_flags & RADEON_CG_SUPPORT_BIF_LS))
  data |= SLV_MEM_LS_EN | MST_MEM_LS_EN |
   REPLAY_MEM_LS_EN | SLV_MEM_AGGRESSIVE_LS_EN;
 else
  data &= ~(SLV_MEM_LS_EN | MST_MEM_LS_EN |
     REPLAY_MEM_LS_EN | SLV_MEM_AGGRESSIVE_LS_EN);

 if (orig != data)
  WREG32_PCIE_PORT(PCIE_CNTL2, data);
}
