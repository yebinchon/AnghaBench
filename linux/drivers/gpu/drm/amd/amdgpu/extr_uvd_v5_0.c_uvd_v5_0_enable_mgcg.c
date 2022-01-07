
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int cg_flags; } ;


 int AMD_CG_SUPPORT_UVD_MGCG ;
 int RREG32 (int ) ;
 int RREG32_UVD_CTX (int ) ;
 int UVD_CGC_CTRL__DYN_CLOCK_MODE_MASK ;
 int WREG32 (int ,int) ;
 int WREG32_UVD_CTX (int ,int) ;
 int ixUVD_CGC_MEM_CTRL ;
 int mmUVD_CGC_CTRL ;

__attribute__((used)) static void uvd_v5_0_enable_mgcg(struct amdgpu_device *adev,
     bool enable)
{
 u32 orig, data;

 if (enable && (adev->cg_flags & AMD_CG_SUPPORT_UVD_MGCG)) {
  data = RREG32_UVD_CTX(ixUVD_CGC_MEM_CTRL);
  data |= 0xfff;
  WREG32_UVD_CTX(ixUVD_CGC_MEM_CTRL, data);

  orig = data = RREG32(mmUVD_CGC_CTRL);
  data |= UVD_CGC_CTRL__DYN_CLOCK_MODE_MASK;
  if (orig != data)
   WREG32(mmUVD_CGC_CTRL, data);
 } else {
  data = RREG32_UVD_CTX(ixUVD_CGC_MEM_CTRL);
  data &= ~0xfff;
  WREG32_UVD_CTX(ixUVD_CGC_MEM_CTRL, data);

  orig = data = RREG32(mmUVD_CGC_CTRL);
  data &= ~UVD_CGC_CTRL__DYN_CLOCK_MODE_MASK;
  if (orig != data)
   WREG32(mmUVD_CGC_CTRL, data);
 }
}
