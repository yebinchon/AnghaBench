
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int dummy; } ;
typedef enum amdgpu_interrupt_state { ____Placeholder_amdgpu_interrupt_state } amdgpu_interrupt_state ;




 int CP_ME1_PIPE0_INT_CNTL ;
 int DRM_DEBUG (char*,int) ;
 int GC ;
 int REG_SET_FIELD (int ,int ,int ,int) ;
 int RREG32 (int ) ;
 int SOC15_REG_OFFSET (int ,int ,int ) ;
 int TIME_STAMP_INT_ENABLE ;
 int WREG32 (int ,int ) ;
 int mmCP_ME1_PIPE0_INT_CNTL ;
 int mmCP_ME1_PIPE1_INT_CNTL ;
 int mmCP_ME1_PIPE2_INT_CNTL ;
 int mmCP_ME1_PIPE3_INT_CNTL ;

__attribute__((used)) static void gfx_v9_0_set_compute_eop_interrupt_state(struct amdgpu_device *adev,
           int me, int pipe,
           enum amdgpu_interrupt_state state)
{
 u32 mec_int_cntl, mec_int_cntl_reg;







 if (me == 1) {
  switch (pipe) {
  case 0:
   mec_int_cntl_reg = SOC15_REG_OFFSET(GC, 0, mmCP_ME1_PIPE0_INT_CNTL);
   break;
  case 1:
   mec_int_cntl_reg = SOC15_REG_OFFSET(GC, 0, mmCP_ME1_PIPE1_INT_CNTL);
   break;
  case 2:
   mec_int_cntl_reg = SOC15_REG_OFFSET(GC, 0, mmCP_ME1_PIPE2_INT_CNTL);
   break;
  case 3:
   mec_int_cntl_reg = SOC15_REG_OFFSET(GC, 0, mmCP_ME1_PIPE3_INT_CNTL);
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
  mec_int_cntl = RREG32(mec_int_cntl_reg);
  mec_int_cntl = REG_SET_FIELD(mec_int_cntl, CP_ME1_PIPE0_INT_CNTL,
          TIME_STAMP_INT_ENABLE, 0);
  WREG32(mec_int_cntl_reg, mec_int_cntl);
  break;
 case 128:
  mec_int_cntl = RREG32(mec_int_cntl_reg);
  mec_int_cntl = REG_SET_FIELD(mec_int_cntl, CP_ME1_PIPE0_INT_CNTL,
          TIME_STAMP_INT_ENABLE, 1);
  WREG32(mec_int_cntl_reg, mec_int_cntl);
  break;
 default:
  break;
 }
}
