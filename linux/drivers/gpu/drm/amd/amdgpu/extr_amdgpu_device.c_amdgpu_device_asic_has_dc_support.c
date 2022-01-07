
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum amd_asic_type { ____Placeholder_amd_asic_type } amd_asic_type ;
 int amdgpu_dc ;

bool amdgpu_device_asic_has_dc_support(enum amd_asic_type asic_type)
{
 switch (asic_type) {
 default:
  return 0;
 }
}
