
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int asic_type; } ;


 int ARRAY_SIZE (int ) ;

 int amdgpu_device_program_register_sequence (struct amdgpu_device*,int ,int ) ;
 int golden_settings_iceland_a11 ;
 int iceland_mgcg_cgcg_init ;

__attribute__((used)) static void sdma_v2_4_init_golden_registers(struct amdgpu_device *adev)
{
 switch (adev->asic_type) {
 case 128:
  amdgpu_device_program_register_sequence(adev,
       iceland_mgcg_cgcg_init,
       ARRAY_SIZE(iceland_mgcg_cgcg_init));
  amdgpu_device_program_register_sequence(adev,
       golden_settings_iceland_a11,
       ARRAY_SIZE(golden_settings_iceland_a11));
  break;
 default:
  break;
 }
}
