
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u32 ;
struct amdgpu_device {int grbm_idx_mutex; } ;


 int RREG32 (int) ;
 int amdgpu_gfx_select_se_sh (struct amdgpu_device*,int,int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static uint32_t nv_read_indexed_register(struct amdgpu_device *adev, u32 se_num,
      u32 sh_num, u32 reg_offset)
{
 uint32_t val;

 mutex_lock(&adev->grbm_idx_mutex);
 if (se_num != 0xffffffff || sh_num != 0xffffffff)
  amdgpu_gfx_select_se_sh(adev, se_num, sh_num, 0xffffffff);

 val = RREG32(reg_offset);

 if (se_num != 0xffffffff || sh_num != 0xffffffff)
  amdgpu_gfx_select_se_sh(adev, 0xffffffff, 0xffffffff, 0xffffffff);
 mutex_unlock(&adev->grbm_idx_mutex);
 return val;
}
