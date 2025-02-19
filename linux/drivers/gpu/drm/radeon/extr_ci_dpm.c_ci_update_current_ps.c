
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_ps {struct ci_ps* ps_priv; } ;
struct radeon_device {int dummy; } ;
struct ci_ps {int dummy; } ;
struct ci_power_info {struct ci_ps current_ps; struct radeon_ps current_rps; } ;


 struct ci_power_info* ci_get_pi (struct radeon_device*) ;
 struct ci_ps* ci_get_ps (struct radeon_ps*) ;

__attribute__((used)) static void ci_update_current_ps(struct radeon_device *rdev,
     struct radeon_ps *rps)
{
 struct ci_ps *new_ps = ci_get_ps(rps);
 struct ci_power_info *pi = ci_get_pi(rdev);

 pi->current_rps = *rps;
 pi->current_ps = *new_ps;
 pi->current_rps.ps_priv = &pi->current_ps;
}
