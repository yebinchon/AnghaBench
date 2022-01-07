
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int trinity_dpm_force_state (struct radeon_device*,int ) ;

__attribute__((used)) static void trinity_force_level_0(struct radeon_device *rdev)
{
 trinity_dpm_force_state(rdev, 0);
}
