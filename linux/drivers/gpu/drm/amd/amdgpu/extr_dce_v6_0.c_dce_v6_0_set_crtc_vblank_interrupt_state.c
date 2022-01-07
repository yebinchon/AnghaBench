
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {int num_crtc; } ;
struct amdgpu_device {TYPE_1__ mode_info; } ;
typedef enum amdgpu_interrupt_state { ____Placeholder_amdgpu_interrupt_state } amdgpu_interrupt_state ;




 int DRM_DEBUG (char*,int) ;
 scalar_t__ RREG32 (scalar_t__) ;
 scalar_t__ SI_CRTC0_REGISTER_OFFSET ;
 scalar_t__ SI_CRTC1_REGISTER_OFFSET ;
 scalar_t__ SI_CRTC2_REGISTER_OFFSET ;
 scalar_t__ SI_CRTC3_REGISTER_OFFSET ;
 scalar_t__ SI_CRTC4_REGISTER_OFFSET ;
 scalar_t__ SI_CRTC5_REGISTER_OFFSET ;
 scalar_t__ VBLANK_INT_MASK ;
 int WREG32 (scalar_t__,scalar_t__) ;
 scalar_t__ mmINT_MASK ;

__attribute__((used)) static void dce_v6_0_set_crtc_vblank_interrupt_state(struct amdgpu_device *adev,
           int crtc,
           enum amdgpu_interrupt_state state)
{
 u32 reg_block, interrupt_mask;

 if (crtc >= adev->mode_info.num_crtc) {
  DRM_DEBUG("invalid crtc %d\n", crtc);
  return;
 }

 switch (crtc) {
 case 0:
  reg_block = SI_CRTC0_REGISTER_OFFSET;
  break;
 case 1:
  reg_block = SI_CRTC1_REGISTER_OFFSET;
  break;
 case 2:
  reg_block = SI_CRTC2_REGISTER_OFFSET;
  break;
 case 3:
  reg_block = SI_CRTC3_REGISTER_OFFSET;
  break;
 case 4:
  reg_block = SI_CRTC4_REGISTER_OFFSET;
  break;
 case 5:
  reg_block = SI_CRTC5_REGISTER_OFFSET;
  break;
 default:
  DRM_DEBUG("invalid crtc %d\n", crtc);
  return;
 }

 switch (state) {
 case 129:
  interrupt_mask = RREG32(mmINT_MASK + reg_block);
  interrupt_mask &= ~VBLANK_INT_MASK;
  WREG32(mmINT_MASK + reg_block, interrupt_mask);
  break;
 case 128:
  interrupt_mask = RREG32(mmINT_MASK + reg_block);
  interrupt_mask |= VBLANK_INT_MASK;
  WREG32(mmINT_MASK + reg_block, interrupt_mask);
  break;
 default:
  break;
 }
}
