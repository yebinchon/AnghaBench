
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSR_IA32_POWER_CTL ;
 int rdmsrl (int ,unsigned long long) ;
 int wrmsrl (int ,unsigned long long) ;

__attribute__((used)) static void c1e_promotion_disable(void)
{
 unsigned long long msr_bits;

 rdmsrl(MSR_IA32_POWER_CTL, msr_bits);
 msr_bits &= ~0x2;
 wrmsrl(MSR_IA32_POWER_CTL, msr_bits);
}
