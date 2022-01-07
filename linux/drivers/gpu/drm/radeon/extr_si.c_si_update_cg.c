
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {scalar_t__ has_uvd; } ;


 int RADEON_CG_BLOCK_BIF ;
 int RADEON_CG_BLOCK_GFX ;
 int RADEON_CG_BLOCK_HDP ;
 int RADEON_CG_BLOCK_MC ;
 int RADEON_CG_BLOCK_SDMA ;
 int RADEON_CG_BLOCK_UVD ;
 int si_enable_bif_mgls (struct radeon_device*,int) ;
 int si_enable_cgcg (struct radeon_device*,int) ;
 int si_enable_dma_mgcg (struct radeon_device*,int) ;
 int si_enable_gui_idle_interrupt (struct radeon_device*,int) ;
 int si_enable_hdp_ls (struct radeon_device*,int) ;
 int si_enable_hdp_mgcg (struct radeon_device*,int) ;
 int si_enable_mc_ls (struct radeon_device*,int) ;
 int si_enable_mc_mgcg (struct radeon_device*,int) ;
 int si_enable_mgcg (struct radeon_device*,int) ;
 int si_enable_uvd_mgcg (struct radeon_device*,int) ;

__attribute__((used)) static void si_update_cg(struct radeon_device *rdev,
    u32 block, bool enable)
{
 if (block & RADEON_CG_BLOCK_GFX) {
  si_enable_gui_idle_interrupt(rdev, 0);

  if (enable) {
   si_enable_mgcg(rdev, 1);
   si_enable_cgcg(rdev, 1);
  } else {
   si_enable_cgcg(rdev, 0);
   si_enable_mgcg(rdev, 0);
  }
  si_enable_gui_idle_interrupt(rdev, 1);
 }

 if (block & RADEON_CG_BLOCK_MC) {
  si_enable_mc_mgcg(rdev, enable);
  si_enable_mc_ls(rdev, enable);
 }

 if (block & RADEON_CG_BLOCK_SDMA) {
  si_enable_dma_mgcg(rdev, enable);
 }

 if (block & RADEON_CG_BLOCK_BIF) {
  si_enable_bif_mgls(rdev, enable);
 }

 if (block & RADEON_CG_BLOCK_UVD) {
  if (rdev->has_uvd) {
   si_enable_uvd_mgcg(rdev, enable);
  }
 }

 if (block & RADEON_CG_BLOCK_HDP) {
  si_enable_hdp_mgcg(rdev, enable);
  si_enable_hdp_ls(rdev, enable);
 }
}
