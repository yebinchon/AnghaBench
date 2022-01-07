
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_irq_src {int dummy; } ;
struct amdgpu_device {int dummy; } ;
typedef enum amdgpu_interrupt_state { ____Placeholder_amdgpu_interrupt_state } amdgpu_interrupt_state ;
 int dce_v6_0_set_crtc_vblank_interrupt_state (struct amdgpu_device*,int,int) ;
 int dce_v6_0_set_crtc_vline_interrupt_state (struct amdgpu_device*,int,int) ;

__attribute__((used)) static int dce_v6_0_set_crtc_interrupt_state(struct amdgpu_device *adev,
          struct amdgpu_irq_src *src,
          unsigned type,
          enum amdgpu_interrupt_state state)
{
 switch (type) {
 case 139:
  dce_v6_0_set_crtc_vblank_interrupt_state(adev, 0, state);
  break;
 case 138:
  dce_v6_0_set_crtc_vblank_interrupt_state(adev, 1, state);
  break;
 case 137:
  dce_v6_0_set_crtc_vblank_interrupt_state(adev, 2, state);
  break;
 case 136:
  dce_v6_0_set_crtc_vblank_interrupt_state(adev, 3, state);
  break;
 case 135:
  dce_v6_0_set_crtc_vblank_interrupt_state(adev, 4, state);
  break;
 case 134:
  dce_v6_0_set_crtc_vblank_interrupt_state(adev, 5, state);
  break;
 case 133:
  dce_v6_0_set_crtc_vline_interrupt_state(adev, 0, state);
  break;
 case 132:
  dce_v6_0_set_crtc_vline_interrupt_state(adev, 1, state);
  break;
 case 131:
  dce_v6_0_set_crtc_vline_interrupt_state(adev, 2, state);
  break;
 case 130:
  dce_v6_0_set_crtc_vline_interrupt_state(adev, 3, state);
  break;
 case 129:
  dce_v6_0_set_crtc_vline_interrupt_state(adev, 4, state);
  break;
 case 128:
  dce_v6_0_set_crtc_vline_interrupt_state(adev, 5, state);
  break;
 default:
  break;
 }
 return 0;
}
