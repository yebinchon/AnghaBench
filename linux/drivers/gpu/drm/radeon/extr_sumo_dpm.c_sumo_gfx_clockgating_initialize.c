
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int sumo_program_git (struct radeon_device*) ;
 int sumo_program_grsd (struct radeon_device*) ;

void sumo_gfx_clockgating_initialize(struct radeon_device *rdev)
{
 sumo_program_git(rdev);
 sumo_program_grsd(rdev);
}
