
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct amdgpu_device {int asic_type; int rev_id; } ;


 scalar_t__ const ARRAY_SIZE (int ) ;






 int golden_settings_gc_9_0 ;
 int golden_settings_gc_9_0_vg10 ;
 int golden_settings_gc_9_0_vg20 ;
 int golden_settings_gc_9_1 ;
 int golden_settings_gc_9_1_rn ;
 int golden_settings_gc_9_1_rv1 ;
 int golden_settings_gc_9_1_rv2 ;
 int golden_settings_gc_9_2_1 ;
 int golden_settings_gc_9_2_1_vg12 ;
 int golden_settings_gc_9_4_1_arct ;
 int golden_settings_gc_9_x_common ;
 int soc15_program_register_sequence (struct amdgpu_device*,int ,scalar_t__ const) ;

__attribute__((used)) static void gfx_v9_0_init_golden_registers(struct amdgpu_device *adev)
{
 switch (adev->asic_type) {
 case 130:
  soc15_program_register_sequence(adev,
      golden_settings_gc_9_0,
      ARRAY_SIZE(golden_settings_gc_9_0));
  soc15_program_register_sequence(adev,
      golden_settings_gc_9_0_vg10,
      ARRAY_SIZE(golden_settings_gc_9_0_vg10));
  break;
 case 129:
  soc15_program_register_sequence(adev,
      golden_settings_gc_9_2_1,
      ARRAY_SIZE(golden_settings_gc_9_2_1));
  soc15_program_register_sequence(adev,
      golden_settings_gc_9_2_1_vg12,
      ARRAY_SIZE(golden_settings_gc_9_2_1_vg12));
  break;
 case 128:
  soc15_program_register_sequence(adev,
      golden_settings_gc_9_0,
      ARRAY_SIZE(golden_settings_gc_9_0));
  soc15_program_register_sequence(adev,
      golden_settings_gc_9_0_vg20,
      ARRAY_SIZE(golden_settings_gc_9_0_vg20));
  break;
 case 133:
  soc15_program_register_sequence(adev,
      golden_settings_gc_9_4_1_arct,
      ARRAY_SIZE(golden_settings_gc_9_4_1_arct));
  break;
 case 132:
  soc15_program_register_sequence(adev, golden_settings_gc_9_1,
      ARRAY_SIZE(golden_settings_gc_9_1));
  if (adev->rev_id >= 8)
   soc15_program_register_sequence(adev,
       golden_settings_gc_9_1_rv2,
       ARRAY_SIZE(golden_settings_gc_9_1_rv2));
  else
   soc15_program_register_sequence(adev,
       golden_settings_gc_9_1_rv1,
       ARRAY_SIZE(golden_settings_gc_9_1_rv1));
  break;
  case 131:
  soc15_program_register_sequence(adev,
      golden_settings_gc_9_1_rn,
      ARRAY_SIZE(golden_settings_gc_9_1_rn));
  return;
 default:
  break;
 }

 if (adev->asic_type != 133)
  soc15_program_register_sequence(adev, golden_settings_gc_9_x_common,
      (const u32)ARRAY_SIZE(golden_settings_gc_9_x_common));
}
