
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int dummy; } ;
typedef enum amdgpu_interrupt_state { ____Placeholder_amdgpu_interrupt_state } amdgpu_interrupt_state ;




 int CP_INT_CNTL_RING0__TIME_STAMP_INT_ENABLE_MASK ;
 int DRM_DEBUG (char*,int) ;
 int RREG32 (int ) ;
 int WREG32 (int ,int ) ;
 int mmCP_ME1_PIPE0_INT_CNTL ;
 int mmCP_ME1_PIPE1_INT_CNTL ;
 int mmCP_ME1_PIPE2_INT_CNTL ;
 int mmCP_ME1_PIPE3_INT_CNTL ;

__attribute__((used)) static void gfx_v8_0_set_compute_eop_interrupt_state(struct amdgpu_device *adev,
           int me, int pipe,
           enum amdgpu_interrupt_state state)
{
 u32 mec_int_cntl, mec_int_cntl_reg;







 if (me == 1) {
  switch (pipe) {
  case 0:
   mec_int_cntl_reg = mmCP_ME1_PIPE0_INT_CNTL;
   break;
  case 1:
   mec_int_cntl_reg = mmCP_ME1_PIPE1_INT_CNTL;
   break;
  case 2:
   mec_int_cntl_reg = mmCP_ME1_PIPE2_INT_CNTL;
   break;
  case 3:
   mec_int_cntl_reg = mmCP_ME1_PIPE3_INT_CNTL;
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
  mec_int_cntl &= ~CP_INT_CNTL_RING0__TIME_STAMP_INT_ENABLE_MASK;
  WREG32(mec_int_cntl_reg, mec_int_cntl);
  break;
 case 128:
  mec_int_cntl = RREG32(mec_int_cntl_reg);
  mec_int_cntl |= CP_INT_CNTL_RING0__TIME_STAMP_INT_ENABLE_MASK;
  WREG32(mec_int_cntl_reg, mec_int_cntl);
  break;
 default:
  break;
 }
}
