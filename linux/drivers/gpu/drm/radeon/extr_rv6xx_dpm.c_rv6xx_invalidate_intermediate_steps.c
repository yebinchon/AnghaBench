
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int medium_sclk_index; } ;
struct rv6xx_power_info {TYPE_1__ hw; } ;
struct radeon_device {int dummy; } ;


 struct rv6xx_power_info* rv6xx_get_pi (struct radeon_device*) ;
 int rv6xx_invalidate_intermediate_steps_range (struct radeon_device*,int ,int ) ;

__attribute__((used)) static void rv6xx_invalidate_intermediate_steps(struct radeon_device *rdev)
{
 struct rv6xx_power_info *pi = rv6xx_get_pi(rdev);

 rv6xx_invalidate_intermediate_steps_range(rdev, 0,
        pi->hw.medium_sclk_index);
}
