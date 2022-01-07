
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int usec_timeout; } ;


 int CP_INT_CNTL__CNTX_BUSY_INT_ENABLE_MASK ;
 int CP_INT_CNTL__CNTX_EMPTY_INT_ENABLE_MASK ;
 int GFX_CLOCK_STATUS ;
 int GFX_LS_STATUS ;
 int GFX_POWER_STATUS ;
 int RLC_BUSY_STATUS ;
 int RREG32 (int ) ;
 int WREG32 (int ,int) ;
 int mmCP_INT_CNTL_RING0 ;
 int mmDB_DEPTH_INFO ;
 int mmRLC_STAT ;
 int udelay (int) ;

__attribute__((used)) static void gfx_v6_0_enable_gui_idle_interrupt(struct amdgpu_device *adev,
            bool enable)
{
 u32 tmp = RREG32(mmCP_INT_CNTL_RING0);
 u32 mask;
 int i;

 if (enable)
  tmp |= (CP_INT_CNTL__CNTX_BUSY_INT_ENABLE_MASK |
   CP_INT_CNTL__CNTX_EMPTY_INT_ENABLE_MASK);
 else
  tmp &= ~(CP_INT_CNTL__CNTX_BUSY_INT_ENABLE_MASK |
    CP_INT_CNTL__CNTX_EMPTY_INT_ENABLE_MASK);
 WREG32(mmCP_INT_CNTL_RING0, tmp);

 if (!enable) {

  tmp = RREG32(mmDB_DEPTH_INFO);

  mask = RLC_BUSY_STATUS | GFX_POWER_STATUS | GFX_CLOCK_STATUS | GFX_LS_STATUS;
  for (i = 0; i < adev->usec_timeout; i++) {
   if ((RREG32(mmRLC_STAT) & mask) == (GFX_CLOCK_STATUS | GFX_POWER_STATUS))
    break;
   udelay(1);
  }
 }
}
