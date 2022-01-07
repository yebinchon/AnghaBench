
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int BIF_DOORBELL_APER_EN ;
 int NBIO ;
 int RCC_DOORBELL_APER_EN ;
 int WREG32_FIELD15 (int ,int ,int ,int ,int) ;

__attribute__((used)) static void nbio_v7_0_enable_doorbell_aperture(struct amdgpu_device *adev,
            bool enable)
{
 WREG32_FIELD15(NBIO, 0, RCC_DOORBELL_APER_EN, BIF_DOORBELL_APER_EN, enable ? 1 : 0);
}
