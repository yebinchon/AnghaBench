
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int trinity_power_level_enable_disable (struct radeon_device*,int ,int) ;

__attribute__((used)) static void trinity_enable_power_level_0(struct radeon_device *rdev)
{
 trinity_power_level_enable_disable(rdev, 0, 1);
}
