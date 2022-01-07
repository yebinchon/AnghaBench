
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arm_smccc_res {scalar_t__ a0; } ;


 int INTEL_SIP_SMC_REG_WRITE ;
 int arm_smccc_smc (int ,unsigned long,unsigned int,int ,int ,int ,int ,int ,struct arm_smccc_res*) ;

__attribute__((used)) static int s10_protected_reg_write(void *context, unsigned int reg,
       unsigned int val)
{
 struct arm_smccc_res result;
 unsigned long offset = (unsigned long)context;

 arm_smccc_smc(INTEL_SIP_SMC_REG_WRITE, offset + reg, val, 0, 0,
        0, 0, 0, &result);

 return (int)result.a0;
}
