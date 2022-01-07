
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int cg_flags; } ;


 int DCM ;
 int RADEON_CG_SUPPORT_UVD_MGCG ;
 int RREG32 (int ) ;
 int RREG32_UVD_CTX (int ) ;
 int UVD_CGC_CTRL ;
 int UVD_CGC_MEM_CTRL ;
 int WREG32 (int ,int) ;
 int WREG32_UVD_CTX (int ,int) ;

__attribute__((used)) static void cik_enable_uvd_mgcg(struct radeon_device *rdev,
    bool enable)
{
 u32 orig, data;

 if (enable && (rdev->cg_flags & RADEON_CG_SUPPORT_UVD_MGCG)) {
  data = RREG32_UVD_CTX(UVD_CGC_MEM_CTRL);
  data = 0xfff;
  WREG32_UVD_CTX(UVD_CGC_MEM_CTRL, data);

  orig = data = RREG32(UVD_CGC_CTRL);
  data |= DCM;
  if (orig != data)
   WREG32(UVD_CGC_CTRL, data);
 } else {
  data = RREG32_UVD_CTX(UVD_CGC_MEM_CTRL);
  data &= ~0xfff;
  WREG32_UVD_CTX(UVD_CGC_MEM_CTRL, data);

  orig = data = RREG32(UVD_CGC_CTRL);
  data &= ~DCM;
  if (orig != data)
   WREG32(UVD_CGC_CTRL, data);
 }
}
