
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int asic_type; int grbm_idx_mutex; } ;


 int ARRAY_SIZE (int ) ;
 int amdgpu_device_program_register_sequence (struct amdgpu_device*,int ,int ) ;
 scalar_t__ amdgpu_sriov_vf (struct amdgpu_device*) ;
 int cz_mgcg_cgcg_init ;
 int fiji_mgcg_cgcg_init ;
 int iceland_mgcg_cgcg_init ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stoney_mgcg_cgcg_init ;
 int tonga_mgcg_cgcg_init ;
 int xgpu_vi_init_golden_registers (struct amdgpu_device*) ;

__attribute__((used)) static void vi_init_golden_registers(struct amdgpu_device *adev)
{

 mutex_lock(&adev->grbm_idx_mutex);

 if (amdgpu_sriov_vf(adev)) {
  xgpu_vi_init_golden_registers(adev);
  mutex_unlock(&adev->grbm_idx_mutex);
  return;
 }

 switch (adev->asic_type) {
 case 129:
  amdgpu_device_program_register_sequence(adev,
       iceland_mgcg_cgcg_init,
       ARRAY_SIZE(iceland_mgcg_cgcg_init));
  break;
 case 135:
  amdgpu_device_program_register_sequence(adev,
       fiji_mgcg_cgcg_init,
       ARRAY_SIZE(fiji_mgcg_cgcg_init));
  break;
 case 130:
  amdgpu_device_program_register_sequence(adev,
       tonga_mgcg_cgcg_init,
       ARRAY_SIZE(tonga_mgcg_cgcg_init));
  break;
 case 136:
  amdgpu_device_program_register_sequence(adev,
       cz_mgcg_cgcg_init,
       ARRAY_SIZE(cz_mgcg_cgcg_init));
  break;
 case 131:
  amdgpu_device_program_register_sequence(adev,
       stoney_mgcg_cgcg_init,
       ARRAY_SIZE(stoney_mgcg_cgcg_init));
  break;
 case 134:
 case 133:
 case 132:
 case 128:
 default:
  break;
 }
 mutex_unlock(&adev->grbm_idx_mutex);
}
