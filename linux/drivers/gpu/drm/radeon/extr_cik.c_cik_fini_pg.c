
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int pg_flags; } ;


 int RADEON_PG_SUPPORT_GFX_PG ;
 int cik_enable_cp_pg (struct radeon_device*,int) ;
 int cik_enable_gds_pg (struct radeon_device*,int) ;
 int cik_update_gfx_pg (struct radeon_device*,int) ;

__attribute__((used)) static void cik_fini_pg(struct radeon_device *rdev)
{
 if (rdev->pg_flags) {
  cik_update_gfx_pg(rdev, 0);
  if (rdev->pg_flags & RADEON_PG_SUPPORT_GFX_PG) {
   cik_enable_cp_pg(rdev, 0);
   cik_enable_gds_pg(rdev, 0);
  }
 }
}
