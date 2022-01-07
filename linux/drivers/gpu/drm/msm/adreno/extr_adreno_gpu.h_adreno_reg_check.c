
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adreno_gpu {scalar_t__* reg_offsets; } ;
typedef enum adreno_regs { ____Placeholder_adreno_regs } adreno_regs ;


 int BUG () ;
 int REG_ADRENO_REGISTER_MAX ;
 scalar_t__ REG_SKIP ;

__attribute__((used)) static inline bool adreno_reg_check(struct adreno_gpu *gpu,
  enum adreno_regs offset_name)
{
 if (offset_name >= REG_ADRENO_REGISTER_MAX ||
   !gpu->reg_offsets[offset_name]) {
  BUG();
 }







 if (gpu->reg_offsets[offset_name] == REG_SKIP)
  return 0;

 return 1;
}
