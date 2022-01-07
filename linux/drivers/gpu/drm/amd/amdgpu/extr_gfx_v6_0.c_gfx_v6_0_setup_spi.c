
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int max_shader_engines; int max_sh_per_se; } ;
struct TYPE_4__ {TYPE_1__ config; } ;
struct amdgpu_device {int grbm_idx_mutex; TYPE_2__ gfx; } ;


 int RREG32 (int ) ;
 int WREG32 (int ,int) ;
 int gfx_v6_0_get_cu_enabled (struct amdgpu_device*) ;
 int gfx_v6_0_select_se_sh (struct amdgpu_device*,int,int,int) ;
 int mmSPI_STATIC_THREAD_MGMT_3 ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void gfx_v6_0_setup_spi(struct amdgpu_device *adev)
{
 int i, j, k;
 u32 data, mask;
 u32 active_cu = 0;

 mutex_lock(&adev->grbm_idx_mutex);
 for (i = 0; i < adev->gfx.config.max_shader_engines; i++) {
  for (j = 0; j < adev->gfx.config.max_sh_per_se; j++) {
   gfx_v6_0_select_se_sh(adev, i, j, 0xffffffff);
   data = RREG32(mmSPI_STATIC_THREAD_MGMT_3);
   active_cu = gfx_v6_0_get_cu_enabled(adev);

   mask = 1;
   for (k = 0; k < 16; k++) {
    mask <<= k;
    if (active_cu & mask) {
     data &= ~mask;
     WREG32(mmSPI_STATIC_THREAD_MGMT_3, data);
     break;
    }
   }
  }
 }
 gfx_v6_0_select_se_sh(adev, 0xffffffff, 0xffffffff, 0xffffffff);
 mutex_unlock(&adev->grbm_idx_mutex);
}
