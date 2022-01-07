
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int usec_timeout; } ;


 int CNTX_BUSY_INT_ENABLE ;
 int CNTX_EMPTY_INT_ENABLE ;
 int CP_INT_CNTL_RING0 ;
 int DB_DEPTH_INFO ;
 int GFX_CLOCK_STATUS ;
 int GFX_LS_STATUS ;
 int GFX_POWER_STATUS ;
 int RLC_BUSY_STATUS ;
 int RLC_STAT ;
 int RREG32 (int ) ;
 int WREG32 (int ,int) ;
 int udelay (int) ;

__attribute__((used)) static void si_enable_gui_idle_interrupt(struct radeon_device *rdev,
      bool enable)
{
 u32 tmp = RREG32(CP_INT_CNTL_RING0);
 u32 mask;
 int i;

 if (enable)
  tmp |= (CNTX_BUSY_INT_ENABLE | CNTX_EMPTY_INT_ENABLE);
 else
  tmp &= ~(CNTX_BUSY_INT_ENABLE | CNTX_EMPTY_INT_ENABLE);
 WREG32(CP_INT_CNTL_RING0, tmp);

 if (!enable) {

  tmp = RREG32(DB_DEPTH_INFO);

  mask = RLC_BUSY_STATUS | GFX_POWER_STATUS | GFX_CLOCK_STATUS | GFX_LS_STATUS;
  for (i = 0; i < rdev->usec_timeout; i++) {
   if ((RREG32(RLC_STAT) & mask) == (GFX_CLOCK_STATUS | GFX_POWER_STATUS))
    break;
   udelay(1);
  }
 }
}
