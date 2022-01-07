
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sumo_ps {int flags; } ;
struct radeon_ps {int dummy; } ;
struct radeon_device {int dummy; } ;


 int SUMO_POWERSTATE_FLAGS_FORCE_NBPS1_STATE ;
 struct sumo_ps* sumo_get_ps (struct radeon_ps*) ;
 int sumo_smu_notify_alt_vddnb_change (struct radeon_device*,int ,int ) ;

__attribute__((used)) static void sumo_pre_notify_alt_vddnb_change(struct radeon_device *rdev,
          struct radeon_ps *new_rps,
          struct radeon_ps *old_rps)
{
 struct sumo_ps *new_ps = sumo_get_ps(new_rps);
 struct sumo_ps *old_ps = sumo_get_ps(old_rps);
 u32 nbps1_old = 0;
 u32 nbps1_new = 0;

 if (old_ps != ((void*)0))
  nbps1_old = (old_ps->flags & SUMO_POWERSTATE_FLAGS_FORCE_NBPS1_STATE) ? 1 : 0;

 nbps1_new = (new_ps->flags & SUMO_POWERSTATE_FLAGS_FORCE_NBPS1_STATE) ? 1 : 0;

 if (nbps1_old == 1 && nbps1_new == 0)
  sumo_smu_notify_alt_vddnb_change(rdev, 0, 0);
}
