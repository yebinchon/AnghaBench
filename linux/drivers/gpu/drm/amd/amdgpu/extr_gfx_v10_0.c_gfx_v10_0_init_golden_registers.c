
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int asic_type; } ;


 int ARRAY_SIZE (int ) ;



 int golden_settings_gc_10_0_nv10 ;
 int golden_settings_gc_10_1 ;
 int golden_settings_gc_10_1_1 ;
 int golden_settings_gc_10_1_2 ;
 int golden_settings_gc_10_1_2_nv12 ;
 int golden_settings_gc_10_1_nv14 ;
 int soc15_program_register_sequence (struct amdgpu_device*,int ,int const) ;

__attribute__((used)) static void gfx_v10_0_init_golden_registers(struct amdgpu_device *adev)
{
 switch (adev->asic_type) {
 case 130:
  soc15_program_register_sequence(adev,
      golden_settings_gc_10_1,
      (const u32)ARRAY_SIZE(golden_settings_gc_10_1));
  soc15_program_register_sequence(adev,
      golden_settings_gc_10_0_nv10,
      (const u32)ARRAY_SIZE(golden_settings_gc_10_0_nv10));
  break;
 case 128:
  soc15_program_register_sequence(adev,
      golden_settings_gc_10_1_1,
      (const u32)ARRAY_SIZE(golden_settings_gc_10_1_1));
  soc15_program_register_sequence(adev,
      golden_settings_gc_10_1_nv14,
      (const u32)ARRAY_SIZE(golden_settings_gc_10_1_nv14));
  break;
 case 129:
  soc15_program_register_sequence(adev,
      golden_settings_gc_10_1_2,
      (const u32)ARRAY_SIZE(golden_settings_gc_10_1_2));
  soc15_program_register_sequence(adev,
      golden_settings_gc_10_1_2_nv12,
      (const u32)ARRAY_SIZE(golden_settings_gc_10_1_2_nv12));
  break;
 default:
  break;
 }
}
