
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct rv7xx_power_info {scalar_t__ max_vddc; } ;
struct amdgpu_device {int dummy; } ;


 scalar_t__ amdgpu_atombios_get_max_vddc (struct amdgpu_device*,int ,int ,scalar_t__*) ;
 struct rv7xx_power_info* rv770_get_pi (struct amdgpu_device*) ;

__attribute__((used)) static void rv770_get_max_vddc(struct amdgpu_device *adev)
{
 struct rv7xx_power_info *pi = rv770_get_pi(adev);
 u16 vddc;

 if (amdgpu_atombios_get_max_vddc(adev, 0, 0, &vddc))
  pi->max_vddc = 0;
 else
  pi->max_vddc = vddc;
}
