
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int dummy; } ;
typedef enum amdgpu_interrupt_state { ____Placeholder_amdgpu_interrupt_state } amdgpu_interrupt_state ;




 int BUG () ;
 int CP_INT_CNTL_RING1__TIME_STAMP_INT_ENABLE_MASK ;
 int CP_INT_CNTL_RING2__TIME_STAMP_INT_ENABLE_MASK ;
 int RREG32 (int ) ;
 int WREG32 (int ,int ) ;
 int mmCP_INT_CNTL_RING1 ;
 int mmCP_INT_CNTL_RING2 ;

__attribute__((used)) static void gfx_v6_0_set_compute_eop_interrupt_state(struct amdgpu_device *adev,
           int ring,
           enum amdgpu_interrupt_state state)
{
 u32 cp_int_cntl;
 switch (state){
 case 129:
  if (ring == 0) {
   cp_int_cntl = RREG32(mmCP_INT_CNTL_RING1);
   cp_int_cntl &= ~CP_INT_CNTL_RING1__TIME_STAMP_INT_ENABLE_MASK;
   WREG32(mmCP_INT_CNTL_RING1, cp_int_cntl);
   break;
  } else {
   cp_int_cntl = RREG32(mmCP_INT_CNTL_RING2);
   cp_int_cntl &= ~CP_INT_CNTL_RING2__TIME_STAMP_INT_ENABLE_MASK;
   WREG32(mmCP_INT_CNTL_RING2, cp_int_cntl);
   break;

  }
 case 128:
  if (ring == 0) {
   cp_int_cntl = RREG32(mmCP_INT_CNTL_RING1);
   cp_int_cntl |= CP_INT_CNTL_RING1__TIME_STAMP_INT_ENABLE_MASK;
   WREG32(mmCP_INT_CNTL_RING1, cp_int_cntl);
   break;
  } else {
   cp_int_cntl = RREG32(mmCP_INT_CNTL_RING2);
   cp_int_cntl |= CP_INT_CNTL_RING2__TIME_STAMP_INT_ENABLE_MASK;
   WREG32(mmCP_INT_CNTL_RING2, cp_int_cntl);
   break;

  }

 default:
  BUG();
  break;

 }
}
