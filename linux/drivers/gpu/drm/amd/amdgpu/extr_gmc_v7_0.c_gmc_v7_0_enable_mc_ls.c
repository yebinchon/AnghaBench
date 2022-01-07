
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int cg_flags; } ;


 int AMD_CG_SUPPORT_MC_LS ;
 int ARRAY_SIZE (int *) ;
 int RREG32 (int ) ;
 int WREG32 (int ,int ) ;
 int * mc_cg_ls_en ;
 int * mc_cg_registers ;

__attribute__((used)) static void gmc_v7_0_enable_mc_ls(struct amdgpu_device *adev,
      bool enable)
{
 int i;
 u32 orig, data;

 for (i = 0; i < ARRAY_SIZE(mc_cg_registers); i++) {
  orig = data = RREG32(mc_cg_registers[i]);
  if (enable && (adev->cg_flags & AMD_CG_SUPPORT_MC_LS))
   data |= mc_cg_ls_en[i];
  else
   data &= ~mc_cg_ls_en[i];
  if (data != orig)
   WREG32(mc_cg_registers[i], data);
 }
}
