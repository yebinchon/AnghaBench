
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sumo_ps {int dummy; } ;
struct radeon_ps {struct sumo_ps* ps_priv; } ;
struct sumo_power_info {struct sumo_ps requested_ps; struct radeon_ps requested_rps; } ;
struct radeon_device {int dummy; } ;


 struct sumo_power_info* sumo_get_pi (struct radeon_device*) ;
 struct sumo_ps* sumo_get_ps (struct radeon_ps*) ;

__attribute__((used)) static void sumo_update_requested_ps(struct radeon_device *rdev,
         struct radeon_ps *rps)
{
 struct sumo_ps *new_ps = sumo_get_ps(rps);
 struct sumo_power_info *pi = sumo_get_pi(rdev);

 pi->requested_rps = *rps;
 pi->requested_ps = *new_ps;
 pi->requested_rps.ps_priv = &pi->requested_ps;
}
