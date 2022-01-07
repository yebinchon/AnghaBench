
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct arm_smccc_res {int a0; } ;


 int arm_smccc_smc (int ,int ,int ,int ,int ,int ,int ,int ,struct arm_smccc_res*) ;

__attribute__((used)) static u64 smc_call1(u64 smc_op, u64 smc_arg)
{
 struct arm_smccc_res res;

 arm_smccc_smc(smc_op, smc_arg, 0, 0, 0, 0, 0, 0, &res);

 return res.a0;
}
