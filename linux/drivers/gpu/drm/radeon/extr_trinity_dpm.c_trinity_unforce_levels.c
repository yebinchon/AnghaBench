
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int trinity_dpm_no_forced_level (struct radeon_device*) ;

__attribute__((used)) static void trinity_unforce_levels(struct radeon_device *rdev)
{
 trinity_dpm_no_forced_level(rdev);
}
