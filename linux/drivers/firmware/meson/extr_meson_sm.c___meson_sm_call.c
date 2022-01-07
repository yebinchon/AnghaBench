
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct arm_smccc_res {int a0; } ;


 int arm_smccc_smc (int ,int ,int ,int ,int ,int ,int ,int ,struct arm_smccc_res*) ;

__attribute__((used)) static u32 __meson_sm_call(u32 cmd, u32 arg0, u32 arg1, u32 arg2,
      u32 arg3, u32 arg4)
{
 struct arm_smccc_res res;

 arm_smccc_smc(cmd, arg0, arg1, arg2, arg3, arg4, 0, 0, &res);
 return res.a0;
}
