
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct si_cac_config_reg {int offset; int type; int mask; int value; int shift; } ;
struct radeon_device {int dummy; } ;


 int EINVAL ;
 int RREG32 (int) ;
 int RREG32_SMC (int) ;

 int SMC_CG_IND_END ;
 int SMC_CG_IND_START ;
 int WREG32 (int,int) ;
 int WREG32_SMC (int,int) ;

__attribute__((used)) static int si_program_cac_config_registers(struct radeon_device *rdev,
        const struct si_cac_config_reg *cac_config_regs)
{
 const struct si_cac_config_reg *config_regs = cac_config_regs;
 u32 data = 0, offset;

 if (!config_regs)
  return -EINVAL;

 while (config_regs->offset != 0xFFFFFFFF) {
  switch (config_regs->type) {
  case 128:
   offset = SMC_CG_IND_START + config_regs->offset;
   if (offset < SMC_CG_IND_END)
    data = RREG32_SMC(offset);
   break;
  default:
   data = RREG32(config_regs->offset << 2);
   break;
  }

  data &= ~config_regs->mask;
  data |= ((config_regs->value << config_regs->shift) & config_regs->mask);

  switch (config_regs->type) {
  case 128:
   offset = SMC_CG_IND_START + config_regs->offset;
   if (offset < SMC_CG_IND_END)
    WREG32_SMC(offset, data);
   break;
  default:
   WREG32(config_regs->offset << 2, data);
   break;
  }
  config_regs++;
 }
 return 0;
}
