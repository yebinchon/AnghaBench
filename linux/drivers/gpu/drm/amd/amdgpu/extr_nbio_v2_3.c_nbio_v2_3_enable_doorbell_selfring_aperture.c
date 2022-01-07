
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int base; } ;
struct amdgpu_device {TYPE_1__ doorbell; } ;


 int BIF_BX_PF_DOORBELL_SELFRING_GPA_APER_CNTL ;
 int DOORBELL_SELFRING_GPA_APER_EN ;
 int DOORBELL_SELFRING_GPA_APER_MODE ;
 int DOORBELL_SELFRING_GPA_APER_SIZE ;
 int NBIO ;
 int REG_SET_FIELD (int,int ,int ,int) ;
 int WREG32_SOC15 (int ,int ,int ,int) ;
 int lower_32_bits (int ) ;
 int mmBIF_BX_PF_DOORBELL_SELFRING_GPA_APER_BASE_HIGH ;
 int mmBIF_BX_PF_DOORBELL_SELFRING_GPA_APER_BASE_LOW ;
 int mmBIF_BX_PF_DOORBELL_SELFRING_GPA_APER_CNTL ;
 int upper_32_bits (int ) ;

__attribute__((used)) static void nbio_v2_3_enable_doorbell_selfring_aperture(struct amdgpu_device *adev,
       bool enable)
{
 u32 tmp = 0;

 if (enable) {
  tmp = REG_SET_FIELD(tmp, BIF_BX_PF_DOORBELL_SELFRING_GPA_APER_CNTL,
        DOORBELL_SELFRING_GPA_APER_EN, 1) |
        REG_SET_FIELD(tmp, BIF_BX_PF_DOORBELL_SELFRING_GPA_APER_CNTL,
        DOORBELL_SELFRING_GPA_APER_MODE, 1) |
        REG_SET_FIELD(tmp, BIF_BX_PF_DOORBELL_SELFRING_GPA_APER_CNTL,
        DOORBELL_SELFRING_GPA_APER_SIZE, 0);

  WREG32_SOC15(NBIO, 0, mmBIF_BX_PF_DOORBELL_SELFRING_GPA_APER_BASE_LOW,
        lower_32_bits(adev->doorbell.base));
  WREG32_SOC15(NBIO, 0, mmBIF_BX_PF_DOORBELL_SELFRING_GPA_APER_BASE_HIGH,
        upper_32_bits(adev->doorbell.base));
 }

 WREG32_SOC15(NBIO, 0, mmBIF_BX_PF_DOORBELL_SELFRING_GPA_APER_CNTL,
       tmp);
}
