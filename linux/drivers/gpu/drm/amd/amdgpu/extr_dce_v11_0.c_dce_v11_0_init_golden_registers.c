
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int asic_type; } ;


 int ARRAY_SIZE (int ) ;






 int amdgpu_device_program_register_sequence (struct amdgpu_device*,int ,int ) ;
 int cz_golden_settings_a11 ;
 int cz_mgcg_cgcg_init ;
 int polaris10_golden_settings_a11 ;
 int polaris11_golden_settings_a11 ;
 int stoney_golden_settings_a11 ;

__attribute__((used)) static void dce_v11_0_init_golden_registers(struct amdgpu_device *adev)
{
 switch (adev->asic_type) {
 case 133:
  amdgpu_device_program_register_sequence(adev,
       cz_mgcg_cgcg_init,
       ARRAY_SIZE(cz_mgcg_cgcg_init));
  amdgpu_device_program_register_sequence(adev,
       cz_golden_settings_a11,
       ARRAY_SIZE(cz_golden_settings_a11));
  break;
 case 129:
  amdgpu_device_program_register_sequence(adev,
       stoney_golden_settings_a11,
       ARRAY_SIZE(stoney_golden_settings_a11));
  break;
 case 131:
 case 130:
  amdgpu_device_program_register_sequence(adev,
       polaris11_golden_settings_a11,
       ARRAY_SIZE(polaris11_golden_settings_a11));
  break;
 case 132:
 case 128:
  amdgpu_device_program_register_sequence(adev,
       polaris10_golden_settings_a11,
       ARRAY_SIZE(polaris10_golden_settings_a11));
  break;
 default:
  break;
 }
}
