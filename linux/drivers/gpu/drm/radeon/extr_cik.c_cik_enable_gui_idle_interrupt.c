
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int CNTX_BUSY_INT_ENABLE ;
 int CNTX_EMPTY_INT_ENABLE ;
 int CP_INT_CNTL_RING0 ;
 int RREG32 (int ) ;
 int WREG32 (int ,int) ;

__attribute__((used)) static void cik_enable_gui_idle_interrupt(struct radeon_device *rdev,
       bool enable)
{
 u32 tmp = RREG32(CP_INT_CNTL_RING0);

 if (enable)
  tmp |= (CNTX_BUSY_INT_ENABLE | CNTX_EMPTY_INT_ENABLE);
 else
  tmp &= ~(CNTX_BUSY_INT_ENABLE | CNTX_EMPTY_INT_ENABLE);
 WREG32(CP_INT_CNTL_RING0, tmp);
}
