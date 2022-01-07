
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int asic_type; int rev_id; } ;


 int ARRAY_SIZE (int ) ;






 int golden_settings_sdma0_4_2 ;
 int golden_settings_sdma0_4_2_init ;
 int golden_settings_sdma1_4_2 ;
 int golden_settings_sdma_4 ;
 int golden_settings_sdma_4_1 ;
 int golden_settings_sdma_4_3 ;
 int golden_settings_sdma_arct ;
 int golden_settings_sdma_rv1 ;
 int golden_settings_sdma_rv2 ;
 int golden_settings_sdma_vg10 ;
 int golden_settings_sdma_vg12 ;
 int soc15_program_register_sequence (struct amdgpu_device*,int ,int ) ;

__attribute__((used)) static void sdma_v4_0_init_golden_registers(struct amdgpu_device *adev)
{
 switch (adev->asic_type) {
 case 130:
  soc15_program_register_sequence(adev,
      golden_settings_sdma_4,
      ARRAY_SIZE(golden_settings_sdma_4));
  soc15_program_register_sequence(adev,
      golden_settings_sdma_vg10,
      ARRAY_SIZE(golden_settings_sdma_vg10));
  break;
 case 129:
  soc15_program_register_sequence(adev,
      golden_settings_sdma_4,
      ARRAY_SIZE(golden_settings_sdma_4));
  soc15_program_register_sequence(adev,
      golden_settings_sdma_vg12,
      ARRAY_SIZE(golden_settings_sdma_vg12));
  break;
 case 128:
  soc15_program_register_sequence(adev,
      golden_settings_sdma0_4_2_init,
      ARRAY_SIZE(golden_settings_sdma0_4_2_init));
  soc15_program_register_sequence(adev,
      golden_settings_sdma0_4_2,
      ARRAY_SIZE(golden_settings_sdma0_4_2));
  soc15_program_register_sequence(adev,
      golden_settings_sdma1_4_2,
      ARRAY_SIZE(golden_settings_sdma1_4_2));
  break;
 case 133:
  soc15_program_register_sequence(adev,
      golden_settings_sdma_arct,
      ARRAY_SIZE(golden_settings_sdma_arct));
  break;
 case 132:
  soc15_program_register_sequence(adev,
      golden_settings_sdma_4_1,
      ARRAY_SIZE(golden_settings_sdma_4_1));
  if (adev->rev_id >= 8)
   soc15_program_register_sequence(adev,
       golden_settings_sdma_rv2,
       ARRAY_SIZE(golden_settings_sdma_rv2));
  else
   soc15_program_register_sequence(adev,
       golden_settings_sdma_rv1,
       ARRAY_SIZE(golden_settings_sdma_rv1));
  break;
 case 131:
  soc15_program_register_sequence(adev,
      golden_settings_sdma_4_3,
      ARRAY_SIZE(golden_settings_sdma_4_3));
  break;
 default:
  break;
 }
}
