
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int dummy; } ;


 int CMP_BUSY_INT_ENABLE ;
 int CNTX_BUSY_INT_ENABLE ;
 int CNTX_EMPTY_INT_ENABLE ;
 int CP_INT_CNTL_RING0 ;
 int GFX_IDLE_INT_ENABLE ;
 int REG_SET_FIELD (int ,int ,int ,int) ;
 int RREG32 (int ) ;
 int WREG32 (int ,int ) ;
 int mmCP_INT_CNTL_RING0 ;

__attribute__((used)) static void gfx_v8_0_enable_gui_idle_interrupt(struct amdgpu_device *adev,
            bool enable)
{
 u32 tmp = RREG32(mmCP_INT_CNTL_RING0);

 tmp = REG_SET_FIELD(tmp, CP_INT_CNTL_RING0, CNTX_BUSY_INT_ENABLE, enable ? 1 : 0);
 tmp = REG_SET_FIELD(tmp, CP_INT_CNTL_RING0, CNTX_EMPTY_INT_ENABLE, enable ? 1 : 0);
 tmp = REG_SET_FIELD(tmp, CP_INT_CNTL_RING0, CMP_BUSY_INT_ENABLE, enable ? 1 : 0);
 tmp = REG_SET_FIELD(tmp, CP_INT_CNTL_RING0, GFX_IDLE_INT_ENABLE, enable ? 1 : 0);

 WREG32(mmCP_INT_CNTL_RING0, tmp);
}
