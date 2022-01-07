
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct rv7xx_power_info {scalar_t__ max_vddc; } ;
struct radeon_device {int dummy; } ;


 scalar_t__ radeon_atom_get_max_vddc (struct radeon_device*,int ,int ,scalar_t__*) ;
 struct rv7xx_power_info* rv770_get_pi (struct radeon_device*) ;

void rv770_get_max_vddc(struct radeon_device *rdev)
{
 struct rv7xx_power_info *pi = rv770_get_pi(rdev);
 u16 vddc;

 if (radeon_atom_get_max_vddc(rdev, 0, 0, &vddc))
  pi->max_vddc = 0;
 else
  pi->max_vddc = vddc;
}
