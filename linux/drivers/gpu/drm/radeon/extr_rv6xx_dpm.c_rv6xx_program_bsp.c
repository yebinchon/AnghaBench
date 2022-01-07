
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct rv6xx_power_info {int bsp; int bsu; } ;
struct TYPE_3__ {int reference_freq; } ;
struct TYPE_4__ {TYPE_1__ spll; } ;
struct radeon_device {TYPE_2__ clock; } ;


 int R600_ASI_DFLT ;
 int r600_calculate_u_and_p (int ,int ,int,int *,int *) ;
 int r600_set_bsp (struct radeon_device*,int ,int ) ;
 struct rv6xx_power_info* rv6xx_get_pi (struct radeon_device*) ;

__attribute__((used)) static void rv6xx_program_bsp(struct radeon_device *rdev)
{
 struct rv6xx_power_info *pi = rv6xx_get_pi(rdev);
 u32 ref_clk = rdev->clock.spll.reference_freq;

 r600_calculate_u_and_p(R600_ASI_DFLT,
          ref_clk, 16,
          &pi->bsp,
          &pi->bsu);

 r600_set_bsp(rdev, pi->bsu, pi->bsp);
}
