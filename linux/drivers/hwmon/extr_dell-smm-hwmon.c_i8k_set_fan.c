
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smm_regs {int ebx; int eax; } ;


 int EINVAL ;
 int I8K_SMM_SET_FAN ;
 scalar_t__ disallow_fan_support ;
 int i8k_fan_max ;
 int i8k_get_fan_status (int) ;
 scalar_t__ i8k_smm (struct smm_regs*) ;

__attribute__((used)) static int i8k_set_fan(int fan, int speed)
{
 struct smm_regs regs = { .eax = I8K_SMM_SET_FAN, };

 if (disallow_fan_support)
  return -EINVAL;

 speed = (speed < 0) ? 0 : ((speed > i8k_fan_max) ? i8k_fan_max : speed);
 regs.ebx = (fan & 0xff) | (speed << 8);

 return i8k_smm(&regs) ? : i8k_get_fan_status(fan);
}
