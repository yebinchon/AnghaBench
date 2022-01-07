
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int sclk; } ;
struct TYPE_6__ {int sclk; } ;
struct TYPE_5__ {int sclk; } ;
struct rv6xx_ps {TYPE_3__ high; TYPE_2__ medium; TYPE_1__ low; } ;
struct TYPE_8__ {int high_sclk_index; int medium_sclk_index; scalar_t__ low_sclk_index; } ;
struct rv6xx_power_info {TYPE_4__ hw; } ;
struct radeon_ps {int dummy; } ;
struct radeon_device {int dummy; } ;


 int rv6xx_generate_steps (struct radeon_device*,int ,int ,int ,int *) ;
 struct rv6xx_power_info* rv6xx_get_pi (struct radeon_device*) ;
 struct rv6xx_ps* rv6xx_get_ps (struct radeon_ps*) ;

__attribute__((used)) static void rv6xx_generate_stepping_table(struct radeon_device *rdev,
       struct radeon_ps *new_ps)
{
 struct rv6xx_ps *new_state = rv6xx_get_ps(new_ps);
 struct rv6xx_power_info *pi = rv6xx_get_pi(rdev);

 pi->hw.low_sclk_index = 0;

 rv6xx_generate_steps(rdev,
        new_state->low.sclk,
        new_state->medium.sclk,
        0,
        &pi->hw.medium_sclk_index);
 rv6xx_generate_steps(rdev,
        new_state->medium.sclk,
        new_state->high.sclk,
        pi->hw.medium_sclk_index,
        &pi->hw.high_sclk_index);
}
