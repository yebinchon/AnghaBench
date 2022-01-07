
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct kgd_dev {int dummy; } ;
struct amdgpu_device {int grbm_idx_mutex; } ;


 int GRBM_GFX_INDEX ;
 int INSTANCE_BROADCAST_WRITES ;
 int REG_SET_FIELD (int ,int ,int ,int) ;
 int SE_BROADCAST_WRITES ;
 int SH_BROADCAST_WRITES ;
 int WREG32 (int ,int ) ;
 struct amdgpu_device* get_amdgpu_device (struct kgd_dev*) ;
 int mmGRBM_GFX_INDEX ;
 int mmSQ_CMD ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int kgd_wave_control_execute(struct kgd_dev *kgd,
     uint32_t gfx_index_val,
     uint32_t sq_cmd)
{
 struct amdgpu_device *adev = get_amdgpu_device(kgd);
 uint32_t data = 0;

 mutex_lock(&adev->grbm_idx_mutex);

 WREG32(mmGRBM_GFX_INDEX, gfx_index_val);
 WREG32(mmSQ_CMD, sq_cmd);

 data = REG_SET_FIELD(data, GRBM_GFX_INDEX,
  INSTANCE_BROADCAST_WRITES, 1);
 data = REG_SET_FIELD(data, GRBM_GFX_INDEX,
  SH_BROADCAST_WRITES, 1);
 data = REG_SET_FIELD(data, GRBM_GFX_INDEX,
  SE_BROADCAST_WRITES, 1);

 WREG32(mmGRBM_GFX_INDEX, data);
 mutex_unlock(&adev->grbm_idx_mutex);

 return 0;
}
