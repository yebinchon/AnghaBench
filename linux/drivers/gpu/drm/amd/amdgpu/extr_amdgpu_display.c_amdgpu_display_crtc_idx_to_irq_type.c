
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_crtc; } ;
struct amdgpu_device {TYPE_1__ mode_info; } ;


 int AMDGPU_CRTC_IRQ_NONE ;
 int AMDGPU_CRTC_IRQ_VBLANK1 ;
 int AMDGPU_CRTC_IRQ_VBLANK2 ;
 int AMDGPU_CRTC_IRQ_VBLANK3 ;
 int AMDGPU_CRTC_IRQ_VBLANK4 ;
 int AMDGPU_CRTC_IRQ_VBLANK5 ;
 int AMDGPU_CRTC_IRQ_VBLANK6 ;

int amdgpu_display_crtc_idx_to_irq_type(struct amdgpu_device *adev, int crtc)
{
 if (crtc < 0 || crtc >= adev->mode_info.num_crtc)
  return AMDGPU_CRTC_IRQ_NONE;

 switch (crtc) {
 case 0:
  return AMDGPU_CRTC_IRQ_VBLANK1;
 case 1:
  return AMDGPU_CRTC_IRQ_VBLANK2;
 case 2:
  return AMDGPU_CRTC_IRQ_VBLANK3;
 case 3:
  return AMDGPU_CRTC_IRQ_VBLANK4;
 case 4:
  return AMDGPU_CRTC_IRQ_VBLANK5;
 case 5:
  return AMDGPU_CRTC_IRQ_VBLANK6;
 default:
  return AMDGPU_CRTC_IRQ_NONE;
 }
}
