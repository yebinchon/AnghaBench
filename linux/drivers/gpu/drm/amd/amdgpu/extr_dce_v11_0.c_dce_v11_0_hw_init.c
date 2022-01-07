
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
struct amdgpu_device {scalar_t__ asic_type; TYPE_3__ mode_info; TYPE_1__ clock; } ;


 int ATOM_GCK_DFS ;
 scalar_t__ CHIP_POLARIS10 ;
 scalar_t__ CHIP_POLARIS11 ;
 scalar_t__ CHIP_POLARIS12 ;
 scalar_t__ CHIP_VEGAM ;
 int DCE_CLOCK_TYPE_DISPCLK ;
 int DCE_CLOCK_TYPE_DPREFCLK ;
 int amdgpu_atombios_crtc_powergate_init (struct amdgpu_device*) ;
 int amdgpu_atombios_crtc_set_dce_clock (struct amdgpu_device*,int ,int ,int ) ;
 int amdgpu_atombios_crtc_set_disp_eng_pll (struct amdgpu_device*,int ) ;
 int amdgpu_atombios_encoder_init_dig (struct amdgpu_device*) ;
 int dce_v11_0_audio_enable (struct amdgpu_device*,int *,int) ;
 int dce_v11_0_hpd_init (struct amdgpu_device*) ;
 int dce_v11_0_init_golden_registers (struct amdgpu_device*) ;
 int dce_v11_0_pageflip_interrupt_init (struct amdgpu_device*) ;
 int dce_v11_0_set_vga_render_state (struct amdgpu_device*,int) ;

__attribute__((used)) static int dce_v11_0_hw_init(void *handle)
{
 int i;
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 dce_v11_0_init_golden_registers(adev);


 dce_v11_0_set_vga_render_state(adev, 0);

 amdgpu_atombios_crtc_powergate_init(adev);
 amdgpu_atombios_encoder_init_dig(adev);
 if ((adev->asic_type == CHIP_POLARIS10) ||
     (adev->asic_type == CHIP_POLARIS11) ||
     (adev->asic_type == CHIP_POLARIS12) ||
     (adev->asic_type == CHIP_VEGAM)) {
  amdgpu_atombios_crtc_set_dce_clock(adev, adev->clock.default_dispclk,
         DCE_CLOCK_TYPE_DISPCLK, ATOM_GCK_DFS);
  amdgpu_atombios_crtc_set_dce_clock(adev, 0,
         DCE_CLOCK_TYPE_DPREFCLK, ATOM_GCK_DFS);
 } else {
  amdgpu_atombios_crtc_set_disp_eng_pll(adev, adev->clock.default_dispclk);
 }


 dce_v11_0_hpd_init(adev);

 for (i = 0; i < adev->mode_info.audio.num_pins; i++) {
  dce_v11_0_audio_enable(adev, &adev->mode_info.audio.pin[i], 0);
 }

 dce_v11_0_pageflip_interrupt_init(adev);

 return 0;
}
