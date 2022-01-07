
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {scalar_t__ has_uvd; } ;


 int RADEON_CG_BLOCK_BIF ;
 int RADEON_CG_BLOCK_GFX ;
 int RADEON_CG_BLOCK_HDP ;
 int RADEON_CG_BLOCK_MC ;
 int RADEON_CG_BLOCK_SDMA ;
 int RADEON_CG_BLOCK_UVD ;
 int si_init_uvd_internal_cg (struct radeon_device*) ;
 int si_update_cg (struct radeon_device*,int,int) ;

__attribute__((used)) static void si_init_cg(struct radeon_device *rdev)
{
 si_update_cg(rdev, (RADEON_CG_BLOCK_GFX |
       RADEON_CG_BLOCK_MC |
       RADEON_CG_BLOCK_SDMA |
       RADEON_CG_BLOCK_BIF |
       RADEON_CG_BLOCK_HDP), 1);
 if (rdev->has_uvd) {
  si_update_cg(rdev, RADEON_CG_BLOCK_UVD, 1);
  si_init_uvd_internal_cg(rdev);
 }
}
