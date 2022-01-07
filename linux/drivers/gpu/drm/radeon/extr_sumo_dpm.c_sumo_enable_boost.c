
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sumo_ps {int flags; } ;
struct radeon_ps {int dummy; } ;
struct radeon_device {int dummy; } ;


 int SUMO_POWERSTATE_FLAGS_BOOST_STATE ;
 int sumo_boost_state_enable (struct radeon_device*,int) ;
 struct sumo_ps* sumo_get_ps (struct radeon_ps*) ;

__attribute__((used)) static void sumo_enable_boost(struct radeon_device *rdev,
         struct radeon_ps *rps,
         bool enable)
{
 struct sumo_ps *new_ps = sumo_get_ps(rps);

 if (enable) {
  if (new_ps->flags & SUMO_POWERSTATE_FLAGS_BOOST_STATE)
   sumo_boost_state_enable(rdev, 1);
 } else
  sumo_boost_state_enable(rdev, 0);
}
