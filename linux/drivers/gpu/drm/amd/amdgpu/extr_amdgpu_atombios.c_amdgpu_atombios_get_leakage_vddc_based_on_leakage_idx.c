
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct amdgpu_device {int dummy; } ;


 int VOLTAGE_TYPE_VDDC ;
 int amdgpu_atombios_get_max_vddc (struct amdgpu_device*,int ,int ,int *) ;

int amdgpu_atombios_get_leakage_vddc_based_on_leakage_idx(struct amdgpu_device *adev,
            u16 *voltage,
            u16 leakage_idx)
{
 return amdgpu_atombios_get_max_vddc(adev, VOLTAGE_TYPE_VDDC, leakage_idx, voltage);
}
