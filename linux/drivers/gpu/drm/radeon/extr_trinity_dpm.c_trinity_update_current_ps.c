
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trinity_ps {int dummy; } ;
struct radeon_ps {struct trinity_ps* ps_priv; } ;
struct trinity_power_info {struct trinity_ps current_ps; struct radeon_ps current_rps; } ;
struct radeon_device {int dummy; } ;


 struct trinity_power_info* trinity_get_pi (struct radeon_device*) ;
 struct trinity_ps* trinity_get_ps (struct radeon_ps*) ;

__attribute__((used)) static void trinity_update_current_ps(struct radeon_device *rdev,
          struct radeon_ps *rps)
{
 struct trinity_ps *new_ps = trinity_get_ps(rps);
 struct trinity_power_info *pi = trinity_get_pi(rdev);

 pi->current_rps = *rps;
 pi->current_ps = *new_ps;
 pi->current_rps.ps_priv = &pi->current_ps;
}
