
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {int aper_base; scalar_t__ gtt_base_align; } ;
struct radeon_device {int flags; TYPE_1__ mc; } ;


 int RADEON_IS_AGP ;
 int RADEON_IS_IGP ;
 int RADEON_NB_TOM ;
 int RREG32 (int ) ;
 int r100_vram_get_type (struct radeon_device*) ;
 int r100_vram_init_sizes (struct radeon_device*) ;
 int radeon_gtt_location (struct radeon_device*,TYPE_1__*) ;
 int radeon_update_bandwidth_info (struct radeon_device*) ;
 int radeon_vram_location (struct radeon_device*,TYPE_1__*,int) ;

__attribute__((used)) static void r100_mc_init(struct radeon_device *rdev)
{
 u64 base;

 r100_vram_get_type(rdev);
 r100_vram_init_sizes(rdev);
 base = rdev->mc.aper_base;
 if (rdev->flags & RADEON_IS_IGP)
  base = (RREG32(RADEON_NB_TOM) & 0xffff) << 16;
 radeon_vram_location(rdev, &rdev->mc, base);
 rdev->mc.gtt_base_align = 0;
 if (!(rdev->flags & RADEON_IS_AGP))
  radeon_gtt_location(rdev, &rdev->mc);
 radeon_update_bandwidth_info(rdev);
}
