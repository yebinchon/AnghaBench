
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int num_hpd; } ;
struct amdgpu_device {TYPE_1__ mode_info; } ;
typedef enum amdgpu_hpd_id { ____Placeholder_amdgpu_hpd_id } amdgpu_hpd_id ;


 int DC_HPD1_INT_CONTROL__DC_HPD1_INT_POLARITY_MASK ;
 int RREG32 (scalar_t__) ;
 int WREG32 (scalar_t__,int ) ;
 int dce_v8_0_hpd_sense (struct amdgpu_device*,int) ;
 scalar_t__* hpd_offsets ;
 scalar_t__ mmDC_HPD1_INT_CONTROL ;

__attribute__((used)) static void dce_v8_0_hpd_set_polarity(struct amdgpu_device *adev,
          enum amdgpu_hpd_id hpd)
{
 u32 tmp;
 bool connected = dce_v8_0_hpd_sense(adev, hpd);

 if (hpd >= adev->mode_info.num_hpd)
  return;

 tmp = RREG32(mmDC_HPD1_INT_CONTROL + hpd_offsets[hpd]);
 if (connected)
  tmp &= ~DC_HPD1_INT_CONTROL__DC_HPD1_INT_POLARITY_MASK;
 else
  tmp |= DC_HPD1_INT_CONTROL__DC_HPD1_INT_POLARITY_MASK;
 WREG32(mmDC_HPD1_INT_CONTROL + hpd_offsets[hpd], tmp);
}
