
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u32 ;
struct cs_section_def {int dummy; } ;
struct TYPE_3__ {void** reg_list; scalar_t__ cp_table_size; struct cs_section_def* cs_data; void* reg_list_size; } ;
struct TYPE_4__ {TYPE_1__ rlc; } ;
struct amdgpu_device {int flags; scalar_t__ asic_type; TYPE_2__ gfx; } ;


 scalar_t__ ALIGN (int,int) ;
 int AMD_IS_APU ;
 scalar_t__ ARRAY_SIZE (void*) ;
 scalar_t__ CHIP_KAVERI ;
 int CP_ME_TABLE_SIZE ;
 int amdgpu_gfx_rlc_init_cpt (struct amdgpu_device*) ;
 int amdgpu_gfx_rlc_init_csb (struct amdgpu_device*) ;
 int amdgpu_gfx_rlc_init_sr (struct amdgpu_device*,void*) ;
 struct cs_section_def* ci_cs_data ;
 void* kalindi_rlc_save_restore_register_list ;
 void* spectre_rlc_save_restore_register_list ;

__attribute__((used)) static int gfx_v7_0_rlc_init(struct amdgpu_device *adev)
{
 const u32 *src_ptr;
 u32 dws;
 const struct cs_section_def *cs_data;
 int r;


 if (adev->flags & AMD_IS_APU) {
  if (adev->asic_type == CHIP_KAVERI) {
   adev->gfx.rlc.reg_list = spectre_rlc_save_restore_register_list;
   adev->gfx.rlc.reg_list_size =
    (u32)ARRAY_SIZE(spectre_rlc_save_restore_register_list);
  } else {
   adev->gfx.rlc.reg_list = kalindi_rlc_save_restore_register_list;
   adev->gfx.rlc.reg_list_size =
    (u32)ARRAY_SIZE(kalindi_rlc_save_restore_register_list);
  }
 }
 adev->gfx.rlc.cs_data = ci_cs_data;
 adev->gfx.rlc.cp_table_size = ALIGN(CP_ME_TABLE_SIZE * 5 * 4, 2048);
 adev->gfx.rlc.cp_table_size += 64 * 1024;

 src_ptr = adev->gfx.rlc.reg_list;
 dws = adev->gfx.rlc.reg_list_size;
 dws += (5 * 16) + 48 + 48 + 64;

 cs_data = adev->gfx.rlc.cs_data;

 if (src_ptr) {

  r = amdgpu_gfx_rlc_init_sr(adev, dws);
  if (r)
   return r;
 }

 if (cs_data) {

  r = amdgpu_gfx_rlc_init_csb(adev);
  if (r)
   return r;
 }

 if (adev->gfx.rlc.cp_table_size) {
  r = amdgpu_gfx_rlc_init_cpt(adev);
  if (r)
   return r;
 }

 return 0;
}
