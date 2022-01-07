
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_hpd; int num_dig; int num_crtc; } ;
struct amdgpu_device {int asic_type; TYPE_1__ mode_info; int * audio_endpt_wreg; int * audio_endpt_rreg; } ;







 int EINVAL ;
 int dce_v8_0_audio_endpt_rreg ;
 int dce_v8_0_audio_endpt_wreg ;
 int dce_v8_0_get_num_crtc (struct amdgpu_device*) ;
 int dce_v8_0_set_display_funcs (struct amdgpu_device*) ;
 int dce_v8_0_set_irq_funcs (struct amdgpu_device*) ;

__attribute__((used)) static int dce_v8_0_early_init(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 adev->audio_endpt_rreg = &dce_v8_0_audio_endpt_rreg;
 adev->audio_endpt_wreg = &dce_v8_0_audio_endpt_wreg;

 dce_v8_0_set_display_funcs(adev);

 adev->mode_info.num_crtc = dce_v8_0_get_num_crtc(adev);

 switch (adev->asic_type) {
 case 132:
 case 131:
  adev->mode_info.num_hpd = 6;
  adev->mode_info.num_dig = 6;
  break;
 case 129:
  adev->mode_info.num_hpd = 6;
  adev->mode_info.num_dig = 7;
  break;
 case 130:
 case 128:
  adev->mode_info.num_hpd = 6;
  adev->mode_info.num_dig = 6;
  break;
 default:

  return -EINVAL;
 }

 dce_v8_0_set_irq_funcs(adev);

 return 0;
}
