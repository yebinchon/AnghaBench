
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




 int DC_HPD_INT_CONTROL ;
 int DC_HPD_INT_EN ;
 int DRM_DEBUG (char*,unsigned int) ;
 int REG_SET_FIELD (int ,int ,int ,int) ;
 int RREG32 (scalar_t__) ;
 int WREG32 (scalar_t__,int ) ;
 scalar_t__* hpd_offsets ;
 scalar_t__ mmDC_HPD_INT_CONTROL ;

__attribute__((used)) static int dce_v11_0_set_hpd_irq_state(struct amdgpu_device *adev,
     struct amdgpu_irq_src *source,
     unsigned hpd,
     enum amdgpu_interrupt_state state)
{
 u32 tmp;

 if (hpd >= adev->mode_info.num_hpd) {
  DRM_DEBUG("invalid hdp %d\n", hpd);
  return 0;
 }

 switch (state) {
 case 129:
  tmp = RREG32(mmDC_HPD_INT_CONTROL + hpd_offsets[hpd]);
  tmp = REG_SET_FIELD(tmp, DC_HPD_INT_CONTROL, DC_HPD_INT_EN, 0);
  WREG32(mmDC_HPD_INT_CONTROL + hpd_offsets[hpd], tmp);
  break;
 case 128:
  tmp = RREG32(mmDC_HPD_INT_CONTROL + hpd_offsets[hpd]);
  tmp = REG_SET_FIELD(tmp, DC_HPD_INT_CONTROL, DC_HPD_INT_EN, 1);
  WREG32(mmDC_HPD_INT_CONTROL + hpd_offsets[hpd], tmp);
  break;
 default:
  break;
 }

 return 0;
}
