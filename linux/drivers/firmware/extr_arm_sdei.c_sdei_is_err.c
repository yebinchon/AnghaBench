
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arm_smccc_res {int a0; } ;
__attribute__((used)) static int sdei_is_err(struct arm_smccc_res *res)
{
 switch (res->a0) {
 case 130:
 case 131:
 case 132:
 case 128:
 case 129:
  return 1;
 }

 return 0;
}
