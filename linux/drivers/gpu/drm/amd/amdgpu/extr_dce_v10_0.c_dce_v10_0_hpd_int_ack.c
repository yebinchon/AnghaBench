
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int num_hpd; } ;
struct amdgpu_device {TYPE_1__ mode_info; } ;


 int DC_HPD_INT_ACK ;
 int DC_HPD_INT_CONTROL ;
 int DRM_DEBUG (char*,int) ;
 int REG_SET_FIELD (int ,int ,int ,int) ;
 int RREG32 (scalar_t__) ;
 int WREG32 (scalar_t__,int ) ;
 scalar_t__* hpd_offsets ;
 scalar_t__ mmDC_HPD_INT_CONTROL ;

__attribute__((used)) static void dce_v10_0_hpd_int_ack(struct amdgpu_device *adev,
      int hpd)
{
 u32 tmp;

 if (hpd >= adev->mode_info.num_hpd) {
  DRM_DEBUG("invalid hdp %d\n", hpd);
  return;
 }

 tmp = RREG32(mmDC_HPD_INT_CONTROL + hpd_offsets[hpd]);
 tmp = REG_SET_FIELD(tmp, DC_HPD_INT_CONTROL, DC_HPD_INT_ACK, 1);
 WREG32(mmDC_HPD_INT_CONTROL + hpd_offsets[hpd], tmp);
}
