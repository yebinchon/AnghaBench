
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int max_backends_per_se; int max_sh_per_se; int max_shader_engines; int backend_enable_mask; int num_rbs; } ;
struct TYPE_4__ {TYPE_1__ config; } ;
struct amdgpu_device {TYPE_2__ gfx; int grbm_idx_mutex; } ;


 int gfx_v9_0_get_rb_active_bitmap (struct amdgpu_device*) ;
 int gfx_v9_0_select_se_sh (struct amdgpu_device*,int,int,int) ;
 int hweight32 (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void gfx_v9_0_setup_rb(struct amdgpu_device *adev)
{
 int i, j;
 u32 data;
 u32 active_rbs = 0;
 u32 rb_bitmap_width_per_sh = adev->gfx.config.max_backends_per_se /
     adev->gfx.config.max_sh_per_se;

 mutex_lock(&adev->grbm_idx_mutex);
 for (i = 0; i < adev->gfx.config.max_shader_engines; i++) {
  for (j = 0; j < adev->gfx.config.max_sh_per_se; j++) {
   gfx_v9_0_select_se_sh(adev, i, j, 0xffffffff);
   data = gfx_v9_0_get_rb_active_bitmap(adev);
   active_rbs |= data << ((i * adev->gfx.config.max_sh_per_se + j) *
            rb_bitmap_width_per_sh);
  }
 }
 gfx_v9_0_select_se_sh(adev, 0xffffffff, 0xffffffff, 0xffffffff);
 mutex_unlock(&adev->grbm_idx_mutex);

 adev->gfx.config.backend_enable_mask = active_rbs;
 adev->gfx.config.num_rbs = hweight32(active_rbs);
}
