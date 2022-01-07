
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smm_regs {int eax; int ebx; } ;


 int I8K_SMM_GET_TEMP ;
 scalar_t__ i8k_smm (struct smm_regs*) ;

__attribute__((used)) static int _i8k_get_temp(int sensor)
{
 struct smm_regs regs = {
  .eax = I8K_SMM_GET_TEMP,
  .ebx = sensor & 0xff,
 };

 return i8k_smm(&regs) ? : regs.eax & 0xff;
}
