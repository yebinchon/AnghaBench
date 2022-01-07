
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sumo_ps {int flags; } ;
struct sumo_power_info {int driver_nbps_policy_disable; } ;
struct radeon_ps {int dummy; } ;
struct radeon_device {int dummy; } ;


 int CG_SCLK_DPM_CTRL_3 ;
 int FORCE_NB_PSTATE_1 ;
 int SUMO_POWERSTATE_FLAGS_FORCE_NBPS1_STATE ;
 int WREG32_P (int ,int ,int ) ;
 struct sumo_power_info* sumo_get_pi (struct radeon_device*) ;
 struct sumo_ps* sumo_get_ps (struct radeon_ps*) ;

__attribute__((used)) static void sumo_force_nbp_state(struct radeon_device *rdev,
     struct radeon_ps *rps)
{
 struct sumo_power_info *pi = sumo_get_pi(rdev);
 struct sumo_ps *new_ps = sumo_get_ps(rps);

 if (!pi->driver_nbps_policy_disable) {
  if (new_ps->flags & SUMO_POWERSTATE_FLAGS_FORCE_NBPS1_STATE)
   WREG32_P(CG_SCLK_DPM_CTRL_3, FORCE_NB_PSTATE_1, ~FORCE_NB_PSTATE_1);
  else
   WREG32_P(CG_SCLK_DPM_CTRL_3, 0, ~FORCE_NB_PSTATE_1);
 }
}
