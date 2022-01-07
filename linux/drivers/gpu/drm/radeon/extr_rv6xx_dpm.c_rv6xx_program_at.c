
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* rp; int* lp; } ;
struct rv6xx_power_info {int bsp; TYPE_1__ hw; } ;
struct radeon_device {int dummy; } ;


 int r600_set_at (struct radeon_device*,int,int,int,int) ;
 struct rv6xx_power_info* rv6xx_get_pi (struct radeon_device*) ;

__attribute__((used)) static void rv6xx_program_at(struct radeon_device *rdev)
{
 struct rv6xx_power_info *pi = rv6xx_get_pi(rdev);

 r600_set_at(rdev,
      (pi->hw.rp[0] * pi->bsp) / 200,
      (pi->hw.rp[1] * pi->bsp) / 200,
      (pi->hw.lp[2] * pi->bsp) / 200,
      (pi->hw.lp[1] * pi->bsp) / 200);
}
