
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int cg_flags; } ;


 scalar_t__ CG_CGTT_LOCAL_0 ;
 scalar_t__ CG_CGTT_LOCAL_1 ;
 int DCM ;
 int RADEON_CG_SUPPORT_UVD_MGCG ;
 int RREG32 (int ) ;
 int RREG32_UVD_CTX (int ) ;
 scalar_t__ SMC_CG_IND_START ;
 int UVD_CGC_CTRL ;
 int UVD_CGC_MEM_CTRL ;
 int WREG32 (int ,int) ;
 int WREG32_SMC (scalar_t__,int) ;
 int WREG32_UVD_CTX (int ,int) ;

__attribute__((used)) static void si_enable_uvd_mgcg(struct radeon_device *rdev,
          bool enable)
{
 u32 orig, data, tmp;

 if (enable && (rdev->cg_flags & RADEON_CG_SUPPORT_UVD_MGCG)) {
  tmp = RREG32_UVD_CTX(UVD_CGC_MEM_CTRL);
  tmp |= 0x3fff;
  WREG32_UVD_CTX(UVD_CGC_MEM_CTRL, tmp);

  orig = data = RREG32(UVD_CGC_CTRL);
  data |= DCM;
  if (orig != data)
   WREG32(UVD_CGC_CTRL, data);

  WREG32_SMC(SMC_CG_IND_START + CG_CGTT_LOCAL_0, 0);
  WREG32_SMC(SMC_CG_IND_START + CG_CGTT_LOCAL_1, 0);
 } else {
  tmp = RREG32_UVD_CTX(UVD_CGC_MEM_CTRL);
  tmp &= ~0x3fff;
  WREG32_UVD_CTX(UVD_CGC_MEM_CTRL, tmp);

  orig = data = RREG32(UVD_CGC_CTRL);
  data &= ~DCM;
  if (orig != data)
   WREG32(UVD_CGC_CTRL, data);

  WREG32_SMC(SMC_CG_IND_START + CG_CGTT_LOCAL_0, 0xffffffff);
  WREG32_SMC(SMC_CG_IND_START + CG_CGTT_LOCAL_1, 0xffffffff);
 }
}
