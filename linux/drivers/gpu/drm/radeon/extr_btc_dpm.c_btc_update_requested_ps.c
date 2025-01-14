
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rv7xx_ps {int dummy; } ;
struct radeon_ps {struct rv7xx_ps* ps_priv; } ;
struct radeon_device {int dummy; } ;
struct evergreen_power_info {struct rv7xx_ps requested_ps; struct radeon_ps requested_rps; } ;


 struct evergreen_power_info* evergreen_get_pi (struct radeon_device*) ;
 struct rv7xx_ps* rv770_get_ps (struct radeon_ps*) ;

__attribute__((used)) static void btc_update_requested_ps(struct radeon_device *rdev,
        struct radeon_ps *rps)
{
 struct rv7xx_ps *new_ps = rv770_get_ps(rps);
 struct evergreen_power_info *eg_pi = evergreen_get_pi(rdev);

 eg_pi->requested_rps = *rps;
 eg_pi->requested_ps = *new_ps;
 eg_pi->requested_rps.ps_priv = &eg_pi->requested_ps;
}
