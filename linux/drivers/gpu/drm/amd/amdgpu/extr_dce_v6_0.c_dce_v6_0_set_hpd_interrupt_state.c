
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct amdgpu_irq_src {int dummy; } ;
struct TYPE_2__ {unsigned int num_hpd; } ;
struct amdgpu_device {TYPE_1__ mode_info; } ;
typedef enum amdgpu_interrupt_state { ____Placeholder_amdgpu_interrupt_state } amdgpu_interrupt_state ;




 int DC_HPDx_INT_EN ;
 int DRM_DEBUG (char*,unsigned int) ;
 int RREG32 (scalar_t__) ;
 int WREG32 (scalar_t__,int ) ;
 scalar_t__* hpd_offsets ;
 scalar_t__ mmDC_HPD1_INT_CONTROL ;

__attribute__((used)) static int dce_v6_0_set_hpd_interrupt_state(struct amdgpu_device *adev,
         struct amdgpu_irq_src *src,
         unsigned type,
         enum amdgpu_interrupt_state state)
{
 u32 dc_hpd_int_cntl;

 if (type >= adev->mode_info.num_hpd) {
  DRM_DEBUG("invalid hdp %d\n", type);
  return 0;
 }

 switch (state) {
 case 129:
  dc_hpd_int_cntl = RREG32(mmDC_HPD1_INT_CONTROL + hpd_offsets[type]);
  dc_hpd_int_cntl &= ~DC_HPDx_INT_EN;
  WREG32(mmDC_HPD1_INT_CONTROL + hpd_offsets[type], dc_hpd_int_cntl);
  break;
 case 128:
  dc_hpd_int_cntl = RREG32(mmDC_HPD1_INT_CONTROL + hpd_offsets[type]);
  dc_hpd_int_cntl |= DC_HPDx_INT_EN;
  WREG32(mmDC_HPD1_INT_CONTROL + hpd_offsets[type], dc_hpd_int_cntl);
  break;
 default:
  break;
 }

 return 0;
}
