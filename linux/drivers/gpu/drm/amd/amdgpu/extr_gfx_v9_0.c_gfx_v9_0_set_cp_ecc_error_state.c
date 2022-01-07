
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_irq_src {int dummy; } ;
struct amdgpu_device {int dummy; } ;
typedef enum amdgpu_interrupt_state { ____Placeholder_amdgpu_interrupt_state } amdgpu_interrupt_state ;




 int CP_ECC_ERROR_INT_ENABLE ;
 int CP_INT_CNTL_RING0 ;
 int DISABLE_ECC_ON_ME_PIPE (int,int) ;
 int ENABLE_ECC_ON_ME_PIPE (int,int) ;
 int GC ;
 int WREG32_FIELD15 (int ,int ,int ,int ,int) ;

__attribute__((used)) static int gfx_v9_0_set_cp_ecc_error_state(struct amdgpu_device *adev,
           struct amdgpu_irq_src *source,
           unsigned type,
           enum amdgpu_interrupt_state state)
{
 switch (state) {
 case 129:
  WREG32_FIELD15(GC, 0, CP_INT_CNTL_RING0,
    CP_ECC_ERROR_INT_ENABLE, 0);
  DISABLE_ECC_ON_ME_PIPE(1, 0);
  DISABLE_ECC_ON_ME_PIPE(1, 1);
  DISABLE_ECC_ON_ME_PIPE(1, 2);
  DISABLE_ECC_ON_ME_PIPE(1, 3);
  break;

 case 128:
  WREG32_FIELD15(GC, 0, CP_INT_CNTL_RING0,
    CP_ECC_ERROR_INT_ENABLE, 1);
  ENABLE_ECC_ON_ME_PIPE(1, 0);
  ENABLE_ECC_ON_ME_PIPE(1, 1);
  ENABLE_ECC_ON_ME_PIPE(1, 2);
  ENABLE_ECC_ON_ME_PIPE(1, 3);
  break;
 default:
  break;
 }

 return 0;
}
