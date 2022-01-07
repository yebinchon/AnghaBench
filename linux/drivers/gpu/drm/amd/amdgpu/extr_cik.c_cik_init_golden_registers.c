
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int asic_type; int grbm_idx_mutex; } ;


 int ARRAY_SIZE (int ) ;





 int amdgpu_device_program_register_sequence (struct amdgpu_device*,int ,int ) ;
 int bonaire_golden_common_registers ;
 int bonaire_golden_registers ;
 int bonaire_golden_spm_registers ;
 int bonaire_mgcg_cgcg_init ;
 int godavari_golden_registers ;
 int hawaii_golden_common_registers ;
 int hawaii_golden_registers ;
 int hawaii_golden_spm_registers ;
 int hawaii_mgcg_cgcg_init ;
 int kalindi_golden_common_registers ;
 int kalindi_golden_registers ;
 int kalindi_golden_spm_registers ;
 int kalindi_mgcg_cgcg_init ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spectre_golden_common_registers ;
 int spectre_golden_registers ;
 int spectre_golden_spm_registers ;
 int spectre_mgcg_cgcg_init ;

__attribute__((used)) static void cik_init_golden_registers(struct amdgpu_device *adev)
{

 mutex_lock(&adev->grbm_idx_mutex);

 switch (adev->asic_type) {
 case 132:
  amdgpu_device_program_register_sequence(adev,
       bonaire_mgcg_cgcg_init,
       ARRAY_SIZE(bonaire_mgcg_cgcg_init));
  amdgpu_device_program_register_sequence(adev,
       bonaire_golden_registers,
       ARRAY_SIZE(bonaire_golden_registers));
  amdgpu_device_program_register_sequence(adev,
       bonaire_golden_common_registers,
       ARRAY_SIZE(bonaire_golden_common_registers));
  amdgpu_device_program_register_sequence(adev,
       bonaire_golden_spm_registers,
       ARRAY_SIZE(bonaire_golden_spm_registers));
  break;
 case 130:
  amdgpu_device_program_register_sequence(adev,
       kalindi_mgcg_cgcg_init,
       ARRAY_SIZE(kalindi_mgcg_cgcg_init));
  amdgpu_device_program_register_sequence(adev,
       kalindi_golden_registers,
       ARRAY_SIZE(kalindi_golden_registers));
  amdgpu_device_program_register_sequence(adev,
       kalindi_golden_common_registers,
       ARRAY_SIZE(kalindi_golden_common_registers));
  amdgpu_device_program_register_sequence(adev,
       kalindi_golden_spm_registers,
       ARRAY_SIZE(kalindi_golden_spm_registers));
  break;
 case 128:
  amdgpu_device_program_register_sequence(adev,
       kalindi_mgcg_cgcg_init,
       ARRAY_SIZE(kalindi_mgcg_cgcg_init));
  amdgpu_device_program_register_sequence(adev,
       godavari_golden_registers,
       ARRAY_SIZE(godavari_golden_registers));
  amdgpu_device_program_register_sequence(adev,
       kalindi_golden_common_registers,
       ARRAY_SIZE(kalindi_golden_common_registers));
  amdgpu_device_program_register_sequence(adev,
       kalindi_golden_spm_registers,
       ARRAY_SIZE(kalindi_golden_spm_registers));
  break;
 case 129:
  amdgpu_device_program_register_sequence(adev,
       spectre_mgcg_cgcg_init,
       ARRAY_SIZE(spectre_mgcg_cgcg_init));
  amdgpu_device_program_register_sequence(adev,
       spectre_golden_registers,
       ARRAY_SIZE(spectre_golden_registers));
  amdgpu_device_program_register_sequence(adev,
       spectre_golden_common_registers,
       ARRAY_SIZE(spectre_golden_common_registers));
  amdgpu_device_program_register_sequence(adev,
       spectre_golden_spm_registers,
       ARRAY_SIZE(spectre_golden_spm_registers));
  break;
 case 131:
  amdgpu_device_program_register_sequence(adev,
       hawaii_mgcg_cgcg_init,
       ARRAY_SIZE(hawaii_mgcg_cgcg_init));
  amdgpu_device_program_register_sequence(adev,
       hawaii_golden_registers,
       ARRAY_SIZE(hawaii_golden_registers));
  amdgpu_device_program_register_sequence(adev,
       hawaii_golden_common_registers,
       ARRAY_SIZE(hawaii_golden_common_registers));
  amdgpu_device_program_register_sequence(adev,
       hawaii_golden_spm_registers,
       ARRAY_SIZE(hawaii_golden_spm_registers));
  break;
 default:
  break;
 }
 mutex_unlock(&adev->grbm_idx_mutex);
}
