
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int usec_timeout; } ;


 scalar_t__ RREG32 (int ) ;
 int mmRLC_SERDES_MASTER_BUSY_0 ;
 int mmRLC_SERDES_MASTER_BUSY_1 ;
 int udelay (int) ;

__attribute__((used)) static void gfx_v6_0_wait_for_rlc_serdes(struct amdgpu_device *adev)
{
 int i;

 for (i = 0; i < adev->usec_timeout; i++) {
  if (RREG32(mmRLC_SERDES_MASTER_BUSY_0) == 0)
   break;
  udelay(1);
 }

 for (i = 0; i < adev->usec_timeout; i++) {
  if (RREG32(mmRLC_SERDES_MASTER_BUSY_1) == 0)
   break;
  udelay(1);
 }
}
