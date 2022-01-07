
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int asic_type; } ;


 int ARRAY_SIZE (int ) ;
 int BUG_ON (char*) ;


 int amdgpu_device_program_register_sequence (struct amdgpu_device*,int ,int ) ;
 int xgpu_fiji_golden_common_all ;
 int xgpu_fiji_golden_settings_a10 ;
 int xgpu_fiji_mgcg_cgcg_init ;
 int xgpu_tonga_golden_common_all ;
 int xgpu_tonga_golden_settings_a11 ;
 int xgpu_tonga_mgcg_cgcg_init ;

void xgpu_vi_init_golden_registers(struct amdgpu_device *adev)
{
 switch (adev->asic_type) {
 case 129:
  amdgpu_device_program_register_sequence(adev,
       xgpu_fiji_mgcg_cgcg_init,
       ARRAY_SIZE(
        xgpu_fiji_mgcg_cgcg_init));
  amdgpu_device_program_register_sequence(adev,
       xgpu_fiji_golden_settings_a10,
       ARRAY_SIZE(
        xgpu_fiji_golden_settings_a10));
  amdgpu_device_program_register_sequence(adev,
       xgpu_fiji_golden_common_all,
       ARRAY_SIZE(
        xgpu_fiji_golden_common_all));
  break;
 case 128:
  amdgpu_device_program_register_sequence(adev,
       xgpu_tonga_mgcg_cgcg_init,
       ARRAY_SIZE(
        xgpu_tonga_mgcg_cgcg_init));
  amdgpu_device_program_register_sequence(adev,
       xgpu_tonga_golden_settings_a11,
       ARRAY_SIZE(
        xgpu_tonga_golden_settings_a11));
  amdgpu_device_program_register_sequence(adev,
       xgpu_tonga_golden_common_all,
       ARRAY_SIZE(
        xgpu_tonga_golden_common_all));
  break;
 default:
  BUG_ON("Doesn't support chip type.\n");
  break;
 }
}
