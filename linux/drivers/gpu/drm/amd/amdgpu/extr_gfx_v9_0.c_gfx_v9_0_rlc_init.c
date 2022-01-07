
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cs_section_def {int dummy; } ;
struct TYPE_4__ {scalar_t__ cp_table_size; struct cs_section_def* cs_data; } ;
struct TYPE_3__ {TYPE_2__ rlc; } ;
struct amdgpu_device {int asic_type; TYPE_1__ gfx; } ;


 scalar_t__ ALIGN (int,int) ;

 int CHIP_RENOIR ;

 int amdgpu_gfx_rlc_init_cpt (struct amdgpu_device*) ;
 int amdgpu_gfx_rlc_init_csb (struct amdgpu_device*) ;
 struct cs_section_def* gfx9_cs_data ;
 int gfx_v9_0_init_lbpw (struct amdgpu_device*) ;
 int gfx_v9_4_init_lbpw (struct amdgpu_device*) ;

__attribute__((used)) static int gfx_v9_0_rlc_init(struct amdgpu_device *adev)
{
 const struct cs_section_def *cs_data;
 int r;

 adev->gfx.rlc.cs_data = gfx9_cs_data;

 cs_data = adev->gfx.rlc.cs_data;

 if (cs_data) {

  r = amdgpu_gfx_rlc_init_csb(adev);
  if (r)
   return r;
 }

 if (adev->asic_type == 129 || adev->asic_type == CHIP_RENOIR) {

  adev->gfx.rlc.cp_table_size = ALIGN(96 * 5 * 4, 2048) + (64 * 1024);
  r = amdgpu_gfx_rlc_init_cpt(adev);
  if (r)
   return r;
 }

 switch (adev->asic_type) {
 case 129:
  gfx_v9_0_init_lbpw(adev);
  break;
 case 128:
  gfx_v9_4_init_lbpw(adev);
  break;
 default:
  break;
 }

 return 0;
}
