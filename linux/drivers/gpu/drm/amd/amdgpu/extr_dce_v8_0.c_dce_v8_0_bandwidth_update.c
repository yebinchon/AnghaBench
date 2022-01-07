
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct drm_display_mode {int dummy; } ;
struct TYPE_6__ {int num_crtc; TYPE_3__** crtcs; } ;
struct amdgpu_device {TYPE_2__ mode_info; } ;
struct TYPE_5__ {struct drm_display_mode mode; scalar_t__ enabled; } ;
struct TYPE_7__ {TYPE_1__ base; } ;


 int amdgpu_display_update_priority (struct amdgpu_device*) ;
 scalar_t__ dce_v8_0_line_buffer_adjust (struct amdgpu_device*,TYPE_3__*,struct drm_display_mode*) ;
 int dce_v8_0_program_watermarks (struct amdgpu_device*,TYPE_3__*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void dce_v8_0_bandwidth_update(struct amdgpu_device *adev)
{
 struct drm_display_mode *mode = ((void*)0);
 u32 num_heads = 0, lb_size;
 int i;

 amdgpu_display_update_priority(adev);

 for (i = 0; i < adev->mode_info.num_crtc; i++) {
  if (adev->mode_info.crtcs[i]->base.enabled)
   num_heads++;
 }
 for (i = 0; i < adev->mode_info.num_crtc; i++) {
  mode = &adev->mode_info.crtcs[i]->base.mode;
  lb_size = dce_v8_0_line_buffer_adjust(adev, adev->mode_info.crtcs[i], mode);
  dce_v8_0_program_watermarks(adev, adev->mode_info.crtcs[i],
         lb_size, num_heads);
 }
}
