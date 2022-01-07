
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rv6xx_power_info {int mpll_ref_div; } ;
struct radeon_device {int dummy; } ;


 int R600_MPLLLOCKTIME_DFLT ;
 int R600_MPLLRESETTIME_DFLT ;
 int r600_set_mpll_lock_time (struct radeon_device*,int) ;
 int r600_set_mpll_reset_time (struct radeon_device*,int ) ;
 struct rv6xx_power_info* rv6xx_get_pi (struct radeon_device*) ;

__attribute__((used)) static void rv6xx_program_mpll_timing_parameters(struct radeon_device *rdev)
{
 struct rv6xx_power_info *pi = rv6xx_get_pi(rdev);

 r600_set_mpll_lock_time(rdev, R600_MPLLLOCKTIME_DFLT *
    pi->mpll_ref_div);
 r600_set_mpll_reset_time(rdev, R600_MPLLRESETTIME_DFLT);
}
