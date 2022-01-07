
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AMDGPU_VRAM_TYPE_DDR2 ;
 int AMDGPU_VRAM_TYPE_DDR3 ;
 int AMDGPU_VRAM_TYPE_GDDR1 ;
 int AMDGPU_VRAM_TYPE_GDDR3 ;
 int AMDGPU_VRAM_TYPE_GDDR4 ;
 int AMDGPU_VRAM_TYPE_GDDR5 ;
 int AMDGPU_VRAM_TYPE_UNKNOWN ;







__attribute__((used)) static int gmc_v6_0_convert_vram_type(int mc_seq_vram_type)
{
 switch (mc_seq_vram_type) {
 case 131:
  return AMDGPU_VRAM_TYPE_GDDR1;
 case 133:
  return AMDGPU_VRAM_TYPE_DDR2;
 case 130:
  return AMDGPU_VRAM_TYPE_GDDR3;
 case 129:
  return AMDGPU_VRAM_TYPE_GDDR4;
 case 128:
  return AMDGPU_VRAM_TYPE_GDDR5;
 case 132:
  return AMDGPU_VRAM_TYPE_DDR3;
 default:
  return AMDGPU_VRAM_TYPE_UNKNOWN;
 }
}
