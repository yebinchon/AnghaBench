
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kv_pt_config_reg {int offset; int type; int value; int shift; int mask; } ;
struct amdgpu_device {int dummy; } ;


 int EINVAL ;
 int KV_CONFIGREG_CACHE ;


 int RREG32 (int) ;
 int RREG32_DIDT (int) ;
 int RREG32_SMC (int) ;
 int WREG32 (int,int) ;
 int WREG32_DIDT (int,int) ;
 int WREG32_SMC (int,int) ;

__attribute__((used)) static int kv_program_pt_config_registers(struct amdgpu_device *adev,
       const struct kv_pt_config_reg *cac_config_regs)
{
 const struct kv_pt_config_reg *config_regs = cac_config_regs;
 u32 data;
 u32 cache = 0;

 if (config_regs == ((void*)0))
  return -EINVAL;

 while (config_regs->offset != 0xFFFFFFFF) {
  if (config_regs->type == KV_CONFIGREG_CACHE) {
   cache |= ((config_regs->value << config_regs->shift) & config_regs->mask);
  } else {
   switch (config_regs->type) {
   case 128:
    data = RREG32_SMC(config_regs->offset);
    break;
   case 129:
    data = RREG32_DIDT(config_regs->offset);
    break;
   default:
    data = RREG32(config_regs->offset);
    break;
   }

   data &= ~config_regs->mask;
   data |= ((config_regs->value << config_regs->shift) & config_regs->mask);
   data |= cache;
   cache = 0;

   switch (config_regs->type) {
   case 128:
    WREG32_SMC(config_regs->offset, data);
    break;
   case 129:
    WREG32_DIDT(config_regs->offset, data);
    break;
   default:
    WREG32(config_regs->offset, data);
    break;
   }
  }
  config_regs++;
 }

 return 0;
}
