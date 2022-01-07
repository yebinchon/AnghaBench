
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int asic_type; } ;


 int ARRAY_SIZE (int ) ;




 int amdgpu_sriov_vf (struct amdgpu_device*) ;
 int golden_settings_athub_1_0_0 ;
 int golden_settings_mmhub_1_0_0 ;
 int soc15_program_register_sequence (struct amdgpu_device*,int ,int ) ;

__attribute__((used)) static void gmc_v9_0_init_golden_registers(struct amdgpu_device *adev)
{

 switch (adev->asic_type) {
 case 130:
  if (amdgpu_sriov_vf(adev))
   break;

 case 128:
  soc15_program_register_sequence(adev,
      golden_settings_mmhub_1_0_0,
      ARRAY_SIZE(golden_settings_mmhub_1_0_0));
  soc15_program_register_sequence(adev,
      golden_settings_athub_1_0_0,
      ARRAY_SIZE(golden_settings_athub_1_0_0));
  break;
 case 129:
  break;
 case 131:

  soc15_program_register_sequence(adev,
      golden_settings_athub_1_0_0,
      ARRAY_SIZE(golden_settings_athub_1_0_0));
  break;
 default:
  break;
 }
}
