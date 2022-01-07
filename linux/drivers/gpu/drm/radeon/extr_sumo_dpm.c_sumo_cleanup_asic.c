
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int sumo_take_smu_control (struct radeon_device*,int) ;

__attribute__((used)) static void sumo_cleanup_asic(struct radeon_device *rdev)
{
 sumo_take_smu_control(rdev, 0);
}
