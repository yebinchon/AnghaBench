
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct amdgpu_irq_src {int dummy; } ;
struct amdgpu_device {int dummy; } ;
typedef enum amdgpu_interrupt_state { ____Placeholder_amdgpu_interrupt_state } amdgpu_interrupt_state ;




 size_t ARRAY_SIZE (size_t*) ;
 size_t RREG32 (size_t) ;
 int WREG32 (size_t,size_t) ;
 size_t* ecc_umc_mcumc_ctrl_addrs ;
 size_t* ecc_umc_mcumc_ctrl_mask_addrs ;

__attribute__((used)) static int gmc_v9_0_ecc_interrupt_state(struct amdgpu_device *adev,
  struct amdgpu_irq_src *src,
  unsigned type,
  enum amdgpu_interrupt_state state)
{
 u32 bits, i, tmp, reg;

 bits = 0x7f;

 switch (state) {
 case 129:
  for (i = 0; i < ARRAY_SIZE(ecc_umc_mcumc_ctrl_addrs); i++) {
   reg = ecc_umc_mcumc_ctrl_addrs[i];
   tmp = RREG32(reg);
   tmp &= ~bits;
   WREG32(reg, tmp);
  }
  for (i = 0; i < ARRAY_SIZE(ecc_umc_mcumc_ctrl_mask_addrs); i++) {
   reg = ecc_umc_mcumc_ctrl_mask_addrs[i];
   tmp = RREG32(reg);
   tmp &= ~bits;
   WREG32(reg, tmp);
  }
  break;
 case 128:
  for (i = 0; i < ARRAY_SIZE(ecc_umc_mcumc_ctrl_addrs); i++) {
   reg = ecc_umc_mcumc_ctrl_addrs[i];
   tmp = RREG32(reg);
   tmp |= bits;
   WREG32(reg, tmp);
  }
  for (i = 0; i < ARRAY_SIZE(ecc_umc_mcumc_ctrl_mask_addrs); i++) {
   reg = ecc_umc_mcumc_ctrl_mask_addrs[i];
   tmp = RREG32(reg);
   tmp |= bits;
   WREG32(reg, tmp);
  }
  break;
 default:
  break;
 }

 return 0;
}
