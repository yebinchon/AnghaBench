
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct amdgpu_device {int asic_type; int rev_id; TYPE_1__* pdev; } ;
struct TYPE_2__ {int device; } ;


 int BUG () ;






 int DRM_DEBUG (char*) ;
 int gfx_v9_0_init_cp_compute_microcode (struct amdgpu_device*,char const*) ;
 int gfx_v9_0_init_cp_gfx_microcode (struct amdgpu_device*,char const*) ;
 int gfx_v9_0_init_rlc_microcode (struct amdgpu_device*,char const*) ;

__attribute__((used)) static int gfx_v9_0_init_microcode(struct amdgpu_device *adev)
{
 const char *chip_name;
 int r;

 DRM_DEBUG("\n");

 switch (adev->asic_type) {
 case 130:
  chip_name = "vega10";
  break;
 case 129:
  chip_name = "vega12";
  break;
 case 128:
  chip_name = "vega20";
  break;
 case 132:
  if (adev->rev_id >= 8)
   chip_name = "raven2";
  else if (adev->pdev->device == 0x15d8)
   chip_name = "picasso";
  else
   chip_name = "raven";
  break;
 case 133:
  chip_name = "arcturus";
  break;
 case 131:
  chip_name = "renoir";
  break;
 default:
  BUG();
 }


 if (adev->asic_type != 133) {
  r = gfx_v9_0_init_cp_gfx_microcode(adev, chip_name);
  if (r)
   return r;
 }

 r = gfx_v9_0_init_rlc_microcode(adev, chip_name);
 if (r)
  return r;

 r = gfx_v9_0_init_cp_compute_microcode(adev, chip_name);
 if (r)
  return r;

 return r;
}
