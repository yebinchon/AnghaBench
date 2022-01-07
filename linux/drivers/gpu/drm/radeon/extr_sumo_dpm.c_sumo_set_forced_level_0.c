
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int sumo_set_forced_level (struct radeon_device*,int ) ;

__attribute__((used)) static void sumo_set_forced_level_0(struct radeon_device *rdev)
{
 sumo_set_forced_level(rdev, 0);
}
