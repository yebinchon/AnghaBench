
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {scalar_t__ pg_flags; } ;


 int si_enable_dma_pg (struct radeon_device*,int) ;
 int si_enable_gfx_cgpg (struct radeon_device*,int) ;

__attribute__((used)) static void si_fini_pg(struct radeon_device *rdev)
{
 if (rdev->pg_flags) {
  si_enable_dma_pg(rdev, 0);
  si_enable_gfx_cgpg(rdev, 0);
 }
}
