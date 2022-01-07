
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct radeon_mc {int mc_vram_size; int real_vram_size; } ;
struct TYPE_2__ {scalar_t__ gtt_base_align; } ;
struct radeon_device {TYPE_1__ mc; int dev; } ;


 int dev_warn (int ,char*) ;
 int radeon_gtt_location (struct radeon_device*,struct radeon_mc*) ;
 int radeon_vram_location (struct radeon_device*,TYPE_1__*,int ) ;

void si_vram_gtt_location(struct radeon_device *rdev,
     struct radeon_mc *mc)
{
 if (mc->mc_vram_size > 0xFFC0000000ULL) {

  dev_warn(rdev->dev, "limiting VRAM\n");
  mc->real_vram_size = 0xFFC0000000ULL;
  mc->mc_vram_size = 0xFFC0000000ULL;
 }
 radeon_vram_location(rdev, &rdev->mc, 0);
 rdev->mc.gtt_base_align = 0;
 radeon_gtt_location(rdev, mc);
}
