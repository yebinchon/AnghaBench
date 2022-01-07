
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int num_pins; int * pin; } ;
struct TYPE_6__ {TYPE_2__ audio; } ;
struct TYPE_4__ {int default_dispclk; } ;
struct amdgpu_device {TYPE_3__ mode_info; TYPE_1__ clock; } ;


 int amdgpu_atombios_crtc_set_disp_eng_pll (struct amdgpu_device*,int ) ;
 int amdgpu_atombios_encoder_init_dig (struct amdgpu_device*) ;
 int dce_v8_0_audio_enable (struct amdgpu_device*,int *,int) ;
 int dce_v8_0_hpd_init (struct amdgpu_device*) ;
 int dce_v8_0_pageflip_interrupt_init (struct amdgpu_device*) ;
 int dce_v8_0_set_vga_render_state (struct amdgpu_device*,int) ;

__attribute__((used)) static int dce_v8_0_hw_init(void *handle)
{
 int i;
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;


 dce_v8_0_set_vga_render_state(adev, 0);

 amdgpu_atombios_encoder_init_dig(adev);
 amdgpu_atombios_crtc_set_disp_eng_pll(adev, adev->clock.default_dispclk);


 dce_v8_0_hpd_init(adev);

 for (i = 0; i < adev->mode_info.audio.num_pins; i++) {
  dce_v8_0_audio_enable(adev, &adev->mode_info.audio.pin[i], 0);
 }

 dce_v8_0_pageflip_interrupt_init(adev);

 return 0;
}
