
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int flags; scalar_t__ has_uvd; } ;


 int RADEON_CG_BLOCK_BIF ;
 int RADEON_CG_BLOCK_GFX ;
 int RADEON_CG_BLOCK_HDP ;
 int RADEON_CG_BLOCK_MC ;
 int RADEON_CG_BLOCK_SDMA ;
 int RADEON_CG_BLOCK_UVD ;
 int RADEON_CG_BLOCK_VCE ;
 int RADEON_IS_IGP ;
 int cik_enable_bif_mgls (struct radeon_device*,int) ;
 int cik_enable_cgcg (struct radeon_device*,int) ;
 int cik_enable_gui_idle_interrupt (struct radeon_device*,int) ;
 int cik_enable_hdp_ls (struct radeon_device*,int) ;
 int cik_enable_hdp_mgcg (struct radeon_device*,int) ;
 int cik_enable_mc_ls (struct radeon_device*,int) ;
 int cik_enable_mc_mgcg (struct radeon_device*,int) ;
 int cik_enable_mgcg (struct radeon_device*,int) ;
 int cik_enable_sdma_mgcg (struct radeon_device*,int) ;
 int cik_enable_sdma_mgls (struct radeon_device*,int) ;
 int cik_enable_uvd_mgcg (struct radeon_device*,int) ;
 int vce_v2_0_enable_mgcg (struct radeon_device*,int) ;

void cik_update_cg(struct radeon_device *rdev,
     u32 block, bool enable)
{

 if (block & RADEON_CG_BLOCK_GFX) {
  cik_enable_gui_idle_interrupt(rdev, 0);

  if (enable) {
   cik_enable_mgcg(rdev, 1);
   cik_enable_cgcg(rdev, 1);
  } else {
   cik_enable_cgcg(rdev, 0);
   cik_enable_mgcg(rdev, 0);
  }
  cik_enable_gui_idle_interrupt(rdev, 1);
 }

 if (block & RADEON_CG_BLOCK_MC) {
  if (!(rdev->flags & RADEON_IS_IGP)) {
   cik_enable_mc_mgcg(rdev, enable);
   cik_enable_mc_ls(rdev, enable);
  }
 }

 if (block & RADEON_CG_BLOCK_SDMA) {
  cik_enable_sdma_mgcg(rdev, enable);
  cik_enable_sdma_mgls(rdev, enable);
 }

 if (block & RADEON_CG_BLOCK_BIF) {
  cik_enable_bif_mgls(rdev, enable);
 }

 if (block & RADEON_CG_BLOCK_UVD) {
  if (rdev->has_uvd)
   cik_enable_uvd_mgcg(rdev, enable);
 }

 if (block & RADEON_CG_BLOCK_HDP) {
  cik_enable_hdp_mgcg(rdev, enable);
  cik_enable_hdp_ls(rdev, enable);
 }

 if (block & RADEON_CG_BLOCK_VCE) {
  vce_v2_0_enable_mgcg(rdev, enable);
 }
}
