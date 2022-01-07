
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sumo_power_info {int psp; } ;
struct radeon_device {int dummy; } ;


 int CG_BSP_0 ;
 int WREG32 (int ,int ) ;
 struct sumo_power_info* sumo_get_pi (struct radeon_device*) ;

__attribute__((used)) static void sumo_init_bsp(struct radeon_device *rdev)
{
 struct sumo_power_info *pi = sumo_get_pi(rdev);

 WREG32(CG_BSP_0, pi->psp);
}
