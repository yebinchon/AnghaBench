
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int asic_type; } ;


 int ARRAY_SIZE (int ) ;
 int amdgpu_device_program_register_sequence (struct amdgpu_device*,int ,int ) ;
 int cz_mgcg_cgcg_init ;
 int fiji_mgcg_cgcg_init ;
 int golden_settings_fiji_a10 ;
 int golden_settings_polaris10_a11 ;
 int golden_settings_polaris11_a11 ;
 int golden_settings_stoney_common ;
 int golden_settings_tonga_a11 ;
 int stoney_mgcg_cgcg_init ;
 int tonga_mgcg_cgcg_init ;

__attribute__((used)) static void gmc_v8_0_init_golden_registers(struct amdgpu_device *adev)
{
 switch (adev->asic_type) {
 case 134:
  amdgpu_device_program_register_sequence(adev,
       fiji_mgcg_cgcg_init,
       ARRAY_SIZE(fiji_mgcg_cgcg_init));
  amdgpu_device_program_register_sequence(adev,
       golden_settings_fiji_a10,
       ARRAY_SIZE(golden_settings_fiji_a10));
  break;
 case 129:
  amdgpu_device_program_register_sequence(adev,
       tonga_mgcg_cgcg_init,
       ARRAY_SIZE(tonga_mgcg_cgcg_init));
  amdgpu_device_program_register_sequence(adev,
       golden_settings_tonga_a11,
       ARRAY_SIZE(golden_settings_tonga_a11));
  break;
 case 132:
 case 131:
 case 128:
  amdgpu_device_program_register_sequence(adev,
       golden_settings_polaris11_a11,
       ARRAY_SIZE(golden_settings_polaris11_a11));
  break;
 case 133:
  amdgpu_device_program_register_sequence(adev,
       golden_settings_polaris10_a11,
       ARRAY_SIZE(golden_settings_polaris10_a11));
  break;
 case 135:
  amdgpu_device_program_register_sequence(adev,
       cz_mgcg_cgcg_init,
       ARRAY_SIZE(cz_mgcg_cgcg_init));
  break;
 case 130:
  amdgpu_device_program_register_sequence(adev,
       stoney_mgcg_cgcg_init,
       ARRAY_SIZE(stoney_mgcg_cgcg_init));
  amdgpu_device_program_register_sequence(adev,
       golden_settings_stoney_common,
       ARRAY_SIZE(golden_settings_stoney_common));
  break;
 default:
  break;
 }
}
