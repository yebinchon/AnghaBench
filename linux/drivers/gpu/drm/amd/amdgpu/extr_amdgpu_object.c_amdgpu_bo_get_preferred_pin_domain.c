
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {scalar_t__ real_vram_size; } ;
struct amdgpu_device {TYPE_1__ gmc; } ;


 int AMDGPU_GEM_DOMAIN_GTT ;
 int AMDGPU_GEM_DOMAIN_VRAM ;
 scalar_t__ AMDGPU_SG_THRESHOLD ;

uint32_t amdgpu_bo_get_preferred_pin_domain(struct amdgpu_device *adev,
         uint32_t domain)
{
 if (domain == (AMDGPU_GEM_DOMAIN_VRAM | AMDGPU_GEM_DOMAIN_GTT)) {
  domain = AMDGPU_GEM_DOMAIN_VRAM;
  if (adev->gmc.real_vram_size <= AMDGPU_SG_THRESHOLD)
   domain = AMDGPU_GEM_DOMAIN_GTT;
 }
 return domain;
}
