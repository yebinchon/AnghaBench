
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_uc {int dummy; } ;


 int __uc_resume (struct intel_uc*,int) ;

int intel_uc_runtime_resume(struct intel_uc *uc)
{




 return __uc_resume(uc, 1);
}
