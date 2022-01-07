
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct soc15_reg_golden {size_t hwip; size_t instance; size_t segment; int reg; int and_mask; int or_mask; } ;
struct amdgpu_device {int*** reg_offset; } ;


 int GC ;
 int RREG32 (int) ;
 int SOC15_REG_OFFSET (int ,int ,int ) ;
 int WREG32 (int,int) ;
 int WREG32_RLC (int,int) ;
 int mmPA_SC_BINNER_EVENT_CNTL_3 ;
 int mmPA_SC_ENHANCE ;
 int mmPA_SC_ENHANCE_1 ;
 int mmSH_MEM_CONFIG ;

void soc15_program_register_sequence(struct amdgpu_device *adev,
          const struct soc15_reg_golden *regs,
          const u32 array_size)
{
 const struct soc15_reg_golden *entry;
 u32 tmp, reg;
 int i;

 for (i = 0; i < array_size; ++i) {
  entry = &regs[i];
  reg = adev->reg_offset[entry->hwip][entry->instance][entry->segment] + entry->reg;

  if (entry->and_mask == 0xffffffff) {
   tmp = entry->or_mask;
  } else {
   tmp = RREG32(reg);
   tmp &= ~(entry->and_mask);
   tmp |= (entry->or_mask & entry->and_mask);
  }

  if (reg == SOC15_REG_OFFSET(GC, 0, mmPA_SC_BINNER_EVENT_CNTL_3) ||
   reg == SOC15_REG_OFFSET(GC, 0, mmPA_SC_ENHANCE) ||
   reg == SOC15_REG_OFFSET(GC, 0, mmPA_SC_ENHANCE_1) ||
   reg == SOC15_REG_OFFSET(GC, 0, mmSH_MEM_CONFIG))
   WREG32_RLC(reg, tmp);
  else
   WREG32(reg, tmp);

 }

}
