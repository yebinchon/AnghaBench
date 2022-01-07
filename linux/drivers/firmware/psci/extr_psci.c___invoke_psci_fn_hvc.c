
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arm_smccc_res {unsigned long a0; } ;


 int arm_smccc_hvc (unsigned long,unsigned long,unsigned long,unsigned long,int ,int ,int ,int ,struct arm_smccc_res*) ;

__attribute__((used)) static unsigned long __invoke_psci_fn_hvc(unsigned long function_id,
   unsigned long arg0, unsigned long arg1,
   unsigned long arg2)
{
 struct arm_smccc_res res;

 arm_smccc_hvc(function_id, arg0, arg1, arg2, 0, 0, 0, 0, &res);
 return res.a0;
}
