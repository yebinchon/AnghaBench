
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int sumo_power_level_enable (struct radeon_device*,int ,int) ;

__attribute__((used)) static void sumo_enable_power_level_0(struct radeon_device *rdev)
{
 sumo_power_level_enable(rdev, 0, 1);
}
