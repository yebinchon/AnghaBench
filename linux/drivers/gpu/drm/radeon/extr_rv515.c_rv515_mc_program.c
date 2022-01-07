
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rv515_mc_save {int dummy; } ;
struct TYPE_2__ {int vram_start; int vram_end; int gtt_start; int gtt_end; int agp_base; int real_vram_size; } ;
struct radeon_device {int flags; TYPE_1__ mc; int dev; } ;


 int RADEON_IS_AGP ;
 int R_000001_MC_FB_LOCATION ;
 int R_000002_MC_AGP_LOCATION ;
 int R_000003_MC_AGP_BASE ;
 int R_000004_MC_AGP_BASE_2 ;
 int R_0000F8_CONFIG_MEMSIZE ;
 int R_000134_HDP_FB_LOCATION ;
 int S_000001_MC_FB_START (int) ;
 int S_000001_MC_FB_TOP (int) ;
 int S_000002_MC_AGP_START (int) ;
 int S_000002_MC_AGP_TOP (int) ;
 int S_000004_AGP_BASE_ADDR_2 (int ) ;
 int S_000134_HDP_FB_START (int) ;
 int WREG32 (int ,int ) ;
 int WREG32_MC (int ,int) ;
 int dev_warn (int ,char*) ;
 int lower_32_bits (int ) ;
 int rv515_mc_resume (struct radeon_device*,struct rv515_mc_save*) ;
 int rv515_mc_stop (struct radeon_device*,struct rv515_mc_save*) ;
 scalar_t__ rv515_mc_wait_for_idle (struct radeon_device*) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static void rv515_mc_program(struct radeon_device *rdev)
{
 struct rv515_mc_save save;


 rv515_mc_stop(rdev, &save);


 if (rv515_mc_wait_for_idle(rdev))
  dev_warn(rdev->dev, "Wait MC idle timeout before updating MC.\n");

 WREG32(R_0000F8_CONFIG_MEMSIZE, rdev->mc.real_vram_size);

 WREG32_MC(R_000001_MC_FB_LOCATION,
   S_000001_MC_FB_START(rdev->mc.vram_start >> 16) |
   S_000001_MC_FB_TOP(rdev->mc.vram_end >> 16));
 WREG32(R_000134_HDP_FB_LOCATION,
  S_000134_HDP_FB_START(rdev->mc.vram_start >> 16));
 if (rdev->flags & RADEON_IS_AGP) {
  WREG32_MC(R_000002_MC_AGP_LOCATION,
   S_000002_MC_AGP_START(rdev->mc.gtt_start >> 16) |
   S_000002_MC_AGP_TOP(rdev->mc.gtt_end >> 16));
  WREG32_MC(R_000003_MC_AGP_BASE, lower_32_bits(rdev->mc.agp_base));
  WREG32_MC(R_000004_MC_AGP_BASE_2,
   S_000004_AGP_BASE_ADDR_2(upper_32_bits(rdev->mc.agp_base)));
 } else {
  WREG32_MC(R_000002_MC_AGP_LOCATION, 0xFFFFFFFF);
  WREG32_MC(R_000003_MC_AGP_BASE, 0);
  WREG32_MC(R_000004_MC_AGP_BASE_2, 0);
 }

 rv515_mc_resume(rdev, &save);
}
