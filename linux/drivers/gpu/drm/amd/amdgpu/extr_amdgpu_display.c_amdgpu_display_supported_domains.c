
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct amdgpu_device {scalar_t__ asic_type; int flags; } ;


 int AMDGPU_GEM_CREATE_CPU_GTT_USWC ;
 int AMDGPU_GEM_DOMAIN_GTT ;
 int AMDGPU_GEM_DOMAIN_VRAM ;
 int AMD_IS_APU ;
 scalar_t__ CHIP_CARRIZO ;
 scalar_t__ CHIP_RAVEN ;
 scalar_t__ amdgpu_bo_support_uswc (int) ;
 scalar_t__ amdgpu_device_asic_has_dc_support (scalar_t__) ;

uint32_t amdgpu_display_supported_domains(struct amdgpu_device *adev,
       uint64_t bo_flags)
{
 uint32_t domain = AMDGPU_GEM_DOMAIN_VRAM;
 return domain;
}
