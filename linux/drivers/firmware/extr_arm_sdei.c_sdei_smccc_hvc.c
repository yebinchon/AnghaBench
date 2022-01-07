
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arm_smccc_res {int dummy; } ;


 int arm_smccc_hvc (unsigned long,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long,int ,int ,struct arm_smccc_res*) ;

__attribute__((used)) static void sdei_smccc_hvc(unsigned long function_id,
      unsigned long arg0, unsigned long arg1,
      unsigned long arg2, unsigned long arg3,
      unsigned long arg4, struct arm_smccc_res *res)
{
 arm_smccc_hvc(function_id, arg0, arg1, arg2, arg3, arg4, 0, 0, res);
}
