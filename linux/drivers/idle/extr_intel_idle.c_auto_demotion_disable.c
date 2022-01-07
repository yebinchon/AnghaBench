
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long long auto_demotion_disable_flags; } ;


 int MSR_PKG_CST_CONFIG_CONTROL ;
 TYPE_1__* icpu ;
 int rdmsrl (int ,unsigned long long) ;
 int wrmsrl (int ,unsigned long long) ;

__attribute__((used)) static void auto_demotion_disable(void)
{
 unsigned long long msr_bits;

 rdmsrl(MSR_PKG_CST_CONFIG_CONTROL, msr_bits);
 msr_bits &= ~(icpu->auto_demotion_disable_flags);
 wrmsrl(MSR_PKG_CST_CONFIG_CONTROL, msr_bits);
}
