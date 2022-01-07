
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int RADEON_CG_BLOCK_BIF ;
 int RADEON_CG_BLOCK_GFX ;
 int RADEON_CG_BLOCK_HDP ;
 int RADEON_CG_BLOCK_MC ;
 int RADEON_CG_BLOCK_SDMA ;
 int RADEON_CG_BLOCK_UVD ;
 int cik_update_cg (struct radeon_device*,int,int) ;

__attribute__((used)) static void cik_fini_cg(struct radeon_device *rdev)
{
 cik_update_cg(rdev, (RADEON_CG_BLOCK_MC |
        RADEON_CG_BLOCK_SDMA |
        RADEON_CG_BLOCK_BIF |
        RADEON_CG_BLOCK_UVD |
        RADEON_CG_BLOCK_HDP), 0);

 cik_update_cg(rdev, RADEON_CG_BLOCK_GFX, 0);
}
