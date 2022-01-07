
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int gtt_start; int gtt_end; int vram_start; int vram_end; int agp_base; } ;
struct radeon_device {int flags; scalar_t__ family; TYPE_1__ mc; int dev; } ;
struct r100_mc_save {int dummy; } ;


 scalar_t__ CHIP_RV200 ;
 int RADEON_IS_AGP ;
 int R_000148_MC_FB_LOCATION ;
 int R_00014C_MC_AGP_LOCATION ;
 int R_00015C_AGP_BASE_2 ;
 int R_000170_AGP_BASE ;
 int S_000148_MC_FB_START (int) ;
 int S_000148_MC_FB_TOP (int) ;
 int S_00014C_MC_AGP_START (int) ;
 int S_00014C_MC_AGP_TOP (int) ;
 int WREG32 (int ,int) ;
 int dev_warn (int ,char*) ;
 int lower_32_bits (int ) ;
 int r100_mc_resume (struct radeon_device*,struct r100_mc_save*) ;
 int r100_mc_stop (struct radeon_device*,struct r100_mc_save*) ;
 scalar_t__ r100_mc_wait_for_idle (struct radeon_device*) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static void r100_mc_program(struct radeon_device *rdev)
{
 struct r100_mc_save save;


 r100_mc_stop(rdev, &save);
 if (rdev->flags & RADEON_IS_AGP) {
  WREG32(R_00014C_MC_AGP_LOCATION,
   S_00014C_MC_AGP_START(rdev->mc.gtt_start >> 16) |
   S_00014C_MC_AGP_TOP(rdev->mc.gtt_end >> 16));
  WREG32(R_000170_AGP_BASE, lower_32_bits(rdev->mc.agp_base));
  if (rdev->family > CHIP_RV200)
   WREG32(R_00015C_AGP_BASE_2,
    upper_32_bits(rdev->mc.agp_base) & 0xff);
 } else {
  WREG32(R_00014C_MC_AGP_LOCATION, 0x0FFFFFFF);
  WREG32(R_000170_AGP_BASE, 0);
  if (rdev->family > CHIP_RV200)
   WREG32(R_00015C_AGP_BASE_2, 0);
 }

 if (r100_mc_wait_for_idle(rdev))
  dev_warn(rdev->dev, "Wait for MC idle timeout.\n");

 WREG32(R_000148_MC_FB_LOCATION,
  S_000148_MC_FB_START(rdev->mc.vram_start >> 16) |
  S_000148_MC_FB_TOP(rdev->mc.vram_end >> 16));
 r100_mc_resume(rdev, &save);
}
