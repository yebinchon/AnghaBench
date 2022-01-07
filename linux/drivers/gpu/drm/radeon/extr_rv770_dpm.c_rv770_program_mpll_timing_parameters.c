
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rv7xx_power_info {int ref_div; int mem_gddr5; } ;
struct radeon_device {scalar_t__ family; } ;


 scalar_t__ CHIP_RV770 ;
 int MPLL_LOCK_TIME (int) ;
 int MPLL_RESET_TIME (int ) ;
 int MPLL_TIME ;
 int R600_MPLLLOCKTIME_DFLT ;
 int R600_MPLLRESETTIME_DFLT ;
 int WREG32 (int ,int) ;
 struct rv7xx_power_info* rv770_get_pi (struct radeon_device*) ;

__attribute__((used)) static void rv770_program_mpll_timing_parameters(struct radeon_device *rdev)
{
 struct rv7xx_power_info *pi = rv770_get_pi(rdev);

 if ((rdev->family == CHIP_RV770) && !pi->mem_gddr5) {
  WREG32(MPLL_TIME,
         (MPLL_LOCK_TIME(R600_MPLLLOCKTIME_DFLT * pi->ref_div) |
   MPLL_RESET_TIME(R600_MPLLRESETTIME_DFLT)));
 }
}
