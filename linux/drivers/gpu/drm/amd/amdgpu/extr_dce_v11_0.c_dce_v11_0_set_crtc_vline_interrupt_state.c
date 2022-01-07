
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int num_crtc; } ;
struct amdgpu_device {TYPE_1__ mode_info; } ;
typedef enum amdgpu_interrupt_state { ____Placeholder_amdgpu_interrupt_state } amdgpu_interrupt_state ;




 int DRM_DEBUG (char*,int) ;
 int LB_INTERRUPT_MASK ;
 int REG_SET_FIELD (int ,int ,int ,int) ;
 int RREG32 (scalar_t__) ;
 int VLINE_INTERRUPT_MASK ;
 int WREG32 (scalar_t__,int ) ;
 scalar_t__* crtc_offsets ;
 scalar_t__ mmLB_INTERRUPT_MASK ;

__attribute__((used)) static void dce_v11_0_set_crtc_vline_interrupt_state(struct amdgpu_device *adev,
          int crtc,
          enum amdgpu_interrupt_state state)
{
 u32 lb_interrupt_mask;

 if (crtc >= adev->mode_info.num_crtc) {
  DRM_DEBUG("invalid crtc %d\n", crtc);
  return;
 }

 switch (state) {
 case 129:
  lb_interrupt_mask = RREG32(mmLB_INTERRUPT_MASK + crtc_offsets[crtc]);
  lb_interrupt_mask = REG_SET_FIELD(lb_interrupt_mask, LB_INTERRUPT_MASK,
        VLINE_INTERRUPT_MASK, 0);
  WREG32(mmLB_INTERRUPT_MASK + crtc_offsets[crtc], lb_interrupt_mask);
  break;
 case 128:
  lb_interrupt_mask = RREG32(mmLB_INTERRUPT_MASK + crtc_offsets[crtc]);
  lb_interrupt_mask = REG_SET_FIELD(lb_interrupt_mask, LB_INTERRUPT_MASK,
        VLINE_INTERRUPT_MASK, 1);
  WREG32(mmLB_INTERRUPT_MASK + crtc_offsets[crtc], lb_interrupt_mask);
  break;
 default:
  break;
 }
}
