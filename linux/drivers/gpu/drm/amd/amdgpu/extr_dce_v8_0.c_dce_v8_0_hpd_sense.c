
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_hpd; } ;
struct amdgpu_device {TYPE_1__ mode_info; } ;
typedef enum amdgpu_hpd_id { ____Placeholder_amdgpu_hpd_id } amdgpu_hpd_id ;


 int DC_HPD1_INT_STATUS__DC_HPD1_SENSE_MASK ;
 int RREG32 (scalar_t__) ;
 scalar_t__* hpd_offsets ;
 scalar_t__ mmDC_HPD1_INT_STATUS ;

__attribute__((used)) static bool dce_v8_0_hpd_sense(struct amdgpu_device *adev,
          enum amdgpu_hpd_id hpd)
{
 bool connected = 0;

 if (hpd >= adev->mode_info.num_hpd)
  return connected;

 if (RREG32(mmDC_HPD1_INT_STATUS + hpd_offsets[hpd]) &
     DC_HPD1_INT_STATUS__DC_HPD1_SENSE_MASK)
  connected = 1;

 return connected;
}
