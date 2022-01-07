
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int flags; } ;


 int AMDGPU_VRAM_TYPE_DDR2 ;
 int AMDGPU_VRAM_TYPE_DDR3 ;
 int AMDGPU_VRAM_TYPE_DDR4 ;
 int AMDGPU_VRAM_TYPE_GDDR5 ;
 int AMDGPU_VRAM_TYPE_GDDR6 ;
 int AMDGPU_VRAM_TYPE_HBM ;
 int AMDGPU_VRAM_TYPE_UNKNOWN ;
 int AMD_IS_APU ;
__attribute__((used)) static int convert_atom_mem_type_to_vram_type (struct amdgpu_device *adev,
            int atom_mem_type)
{
 int vram_type;

 if (adev->flags & AMD_IS_APU) {
  switch (atom_mem_type) {
  case 133:
  case 130:
   vram_type = AMDGPU_VRAM_TYPE_DDR2;
   break;
  case 132:
  case 129:
   vram_type = AMDGPU_VRAM_TYPE_DDR3;
   break;
  case 131:
  case 128:
   vram_type = AMDGPU_VRAM_TYPE_DDR4;
   break;
  default:
   vram_type = AMDGPU_VRAM_TYPE_UNKNOWN;
   break;
  }
 } else {
  switch (atom_mem_type) {
  case 136:
   vram_type = AMDGPU_VRAM_TYPE_GDDR5;
   break;
  case 134:
   vram_type = AMDGPU_VRAM_TYPE_HBM;
   break;
  case 135:
   vram_type = AMDGPU_VRAM_TYPE_GDDR6;
   break;
  default:
   vram_type = AMDGPU_VRAM_TYPE_UNKNOWN;
   break;
  }
 }

 return vram_type;
}
