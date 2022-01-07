
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int AMDGPU_GEM_DOMAIN_CPU ;
 int AMDGPU_GEM_DOMAIN_GDS ;
 int AMDGPU_GEM_DOMAIN_GTT ;
 int AMDGPU_GEM_DOMAIN_GWS ;
 int AMDGPU_GEM_DOMAIN_OA ;
 int AMDGPU_GEM_DOMAIN_VRAM ;







__attribute__((used)) static inline unsigned amdgpu_mem_type_to_domain(u32 mem_type)
{
 switch (mem_type) {
 case 128:
  return AMDGPU_GEM_DOMAIN_VRAM;
 case 129:
  return AMDGPU_GEM_DOMAIN_GTT;
 case 130:
  return AMDGPU_GEM_DOMAIN_CPU;
 case 133:
  return AMDGPU_GEM_DOMAIN_GDS;
 case 132:
  return AMDGPU_GEM_DOMAIN_GWS;
 case 131:
  return AMDGPU_GEM_DOMAIN_OA;
 default:
  break;
 }
 return 0;
}
