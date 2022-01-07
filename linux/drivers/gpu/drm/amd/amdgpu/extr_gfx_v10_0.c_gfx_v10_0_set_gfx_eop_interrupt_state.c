
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdgpu_device {int dummy; } ;
typedef enum amdgpu_interrupt_state { ____Placeholder_amdgpu_interrupt_state } amdgpu_interrupt_state ;




 int CP_INT_CNTL_RING0 ;
 int DRM_DEBUG (char*,int) ;
 int GC ;
 int REG_SET_FIELD (int,int ,int ,int) ;
 int RREG32 (int) ;
 int SOC15_REG_OFFSET (int ,int ,int ) ;
 int TIME_STAMP_INT_ENABLE ;
 int WREG32 (int,int) ;
 int mmCP_INT_CNTL_RING0 ;
 int mmCP_INT_CNTL_RING1 ;

__attribute__((used)) static void
gfx_v10_0_set_gfx_eop_interrupt_state(struct amdgpu_device *adev,
          uint32_t me, uint32_t pipe,
          enum amdgpu_interrupt_state state)
{
 uint32_t cp_int_cntl, cp_int_cntl_reg;

 if (!me) {
  switch (pipe) {
  case 0:
   cp_int_cntl_reg = SOC15_REG_OFFSET(GC, 0, mmCP_INT_CNTL_RING0);
   break;
  case 1:
   cp_int_cntl_reg = SOC15_REG_OFFSET(GC, 0, mmCP_INT_CNTL_RING1);
   break;
  default:
   DRM_DEBUG("invalid pipe %d\n", pipe);
   return;
  }
 } else {
  DRM_DEBUG("invalid me %d\n", me);
  return;
 }

 switch (state) {
 case 129:
  cp_int_cntl = RREG32(cp_int_cntl_reg);
  cp_int_cntl = REG_SET_FIELD(cp_int_cntl, CP_INT_CNTL_RING0,
         TIME_STAMP_INT_ENABLE, 0);
  WREG32(cp_int_cntl_reg, cp_int_cntl);
  break;
 case 128:
  cp_int_cntl = RREG32(cp_int_cntl_reg);
  cp_int_cntl = REG_SET_FIELD(cp_int_cntl, CP_INT_CNTL_RING0,
         TIME_STAMP_INT_ENABLE, 1);
  WREG32(cp_int_cntl_reg, cp_int_cntl);
  break;
 default:
  break;
 }
}
