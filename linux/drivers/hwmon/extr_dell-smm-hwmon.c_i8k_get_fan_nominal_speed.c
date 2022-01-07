
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smm_regs {int eax; int ebx; } ;


 int EINVAL ;
 int I8K_SMM_GET_NOM_SPEED ;
 scalar_t__ disallow_fan_support ;
 int i8k_fan_mult ;
 scalar_t__ i8k_smm (struct smm_regs*) ;

__attribute__((used)) static int i8k_get_fan_nominal_speed(int fan, int speed)
{
 struct smm_regs regs = { .eax = I8K_SMM_GET_NOM_SPEED, };

 if (disallow_fan_support)
  return -EINVAL;

 regs.ebx = (fan & 0xff) | (speed << 8);
 return i8k_smm(&regs) ? : (regs.eax & 0xffff) * i8k_fan_mult;
}
