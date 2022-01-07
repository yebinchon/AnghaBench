
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int cg_flags; } ;


 int ARRAY_SIZE (int *) ;
 int MC_LS_ENABLE ;
 int RADEON_CG_SUPPORT_MC_LS ;
 int RREG32 (int ) ;
 int WREG32 (int ,int ) ;
 int * mc_cg_registers ;

__attribute__((used)) static void si_enable_mc_ls(struct radeon_device *rdev,
       bool enable)
{
 int i;
 u32 orig, data;

 for (i = 0; i < ARRAY_SIZE(mc_cg_registers); i++) {
  orig = data = RREG32(mc_cg_registers[i]);
  if (enable && (rdev->cg_flags & RADEON_CG_SUPPORT_MC_LS))
   data |= MC_LS_ENABLE;
  else
   data &= ~MC_LS_ENABLE;
  if (data != orig)
   WREG32(mc_cg_registers[i], data);
 }
}
