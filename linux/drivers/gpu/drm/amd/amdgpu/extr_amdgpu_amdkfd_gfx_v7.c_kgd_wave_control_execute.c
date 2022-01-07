
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct kgd_dev {int dummy; } ;
struct amdgpu_device {int grbm_idx_mutex; } ;


 int GRBM_GFX_INDEX__INSTANCE_BROADCAST_WRITES_MASK ;
 int GRBM_GFX_INDEX__SE_BROADCAST_WRITES_MASK ;
 int GRBM_GFX_INDEX__SH_BROADCAST_WRITES_MASK ;
 int WREG32 (int ,int) ;
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
 uint32_t data;

 mutex_lock(&adev->grbm_idx_mutex);

 WREG32(mmGRBM_GFX_INDEX, gfx_index_val);
 WREG32(mmSQ_CMD, sq_cmd);



 data = GRBM_GFX_INDEX__INSTANCE_BROADCAST_WRITES_MASK |
  GRBM_GFX_INDEX__SH_BROADCAST_WRITES_MASK |
  GRBM_GFX_INDEX__SE_BROADCAST_WRITES_MASK;

 WREG32(mmGRBM_GFX_INDEX, data);

 mutex_unlock(&adev->grbm_idx_mutex);

 return 0;
}
