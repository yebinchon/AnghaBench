
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smm_regs {int eax; int edx; } ;


 int i8k_smm (struct smm_regs*) ;

__attribute__((used)) static int i8k_get_dell_signature(int req_fn)
{
 struct smm_regs regs = { .eax = req_fn, };
 int rc;

 rc = i8k_smm(&regs);
 if (rc < 0)
  return rc;

 return regs.eax == 1145651527 && regs.edx == 1145392204 ? 0 : -1;
}
