
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int dummy; } ;


 int CP_INT_CNTL_RING0__CNTX_BUSY_INT_ENABLE_MASK ;
 int CP_INT_CNTL_RING0__CNTX_EMPTY_INT_ENABLE_MASK ;
 int RREG32 (int ) ;
 int WREG32 (int ,int) ;
 int mmCP_INT_CNTL_RING0 ;

__attribute__((used)) static void gfx_v7_0_enable_gui_idle_interrupt(struct amdgpu_device *adev,
            bool enable)
{
 u32 tmp = RREG32(mmCP_INT_CNTL_RING0);

 if (enable)
  tmp |= (CP_INT_CNTL_RING0__CNTX_BUSY_INT_ENABLE_MASK |
    CP_INT_CNTL_RING0__CNTX_EMPTY_INT_ENABLE_MASK);
 else
  tmp &= ~(CP_INT_CNTL_RING0__CNTX_BUSY_INT_ENABLE_MASK |
    CP_INT_CNTL_RING0__CNTX_EMPTY_INT_ENABLE_MASK);
 WREG32(mmCP_INT_CNTL_RING0, tmp);
}
