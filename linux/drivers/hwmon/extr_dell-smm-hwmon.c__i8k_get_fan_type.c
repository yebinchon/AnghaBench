
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smm_regs {int eax; int ebx; } ;


 int EINVAL ;
 int I8K_SMM_GET_FAN_TYPE ;
 scalar_t__ disallow_fan_support ;
 scalar_t__ disallow_fan_type_call ;
 scalar_t__ i8k_smm (struct smm_regs*) ;

__attribute__((used)) static int _i8k_get_fan_type(int fan)
{
 struct smm_regs regs = { .eax = I8K_SMM_GET_FAN_TYPE, };

 if (disallow_fan_support || disallow_fan_type_call)
  return -EINVAL;

 regs.ebx = fan & 0xff;
 return i8k_smm(&regs) ? : regs.eax & 0xff;
}
