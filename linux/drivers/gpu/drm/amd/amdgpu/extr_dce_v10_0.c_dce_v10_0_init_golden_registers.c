
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int asic_type; } ;


 int ARRAY_SIZE (int ) ;


 int amdgpu_device_program_register_sequence (struct amdgpu_device*,int ,int ) ;
 int fiji_mgcg_cgcg_init ;
 int golden_settings_fiji_a10 ;
 int golden_settings_tonga_a11 ;
 int tonga_mgcg_cgcg_init ;

__attribute__((used)) static void dce_v10_0_init_golden_registers(struct amdgpu_device *adev)
{
 switch (adev->asic_type) {
 case 129:
  amdgpu_device_program_register_sequence(adev,
       fiji_mgcg_cgcg_init,
       ARRAY_SIZE(fiji_mgcg_cgcg_init));
  amdgpu_device_program_register_sequence(adev,
       golden_settings_fiji_a10,
       ARRAY_SIZE(golden_settings_fiji_a10));
  break;
 case 128:
  amdgpu_device_program_register_sequence(adev,
       tonga_mgcg_cgcg_init,
       ARRAY_SIZE(tonga_mgcg_cgcg_init));
  amdgpu_device_program_register_sequence(adev,
       golden_settings_tonga_a11,
       ARRAY_SIZE(golden_settings_tonga_a11));
  break;
 default:
  break;
 }
}
