
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {scalar_t__ arg; } ;


 unsigned long HFI1_CAP_K2U ;
 unsigned long HFI1_CAP_LOCKED_SMASK ;
 unsigned long HFI1_CAP_USER_SHIFT ;
 int PAGE_SIZE ;
 int scnprintf (char*,int ,char*,unsigned long) ;

__attribute__((used)) static int hfi1_caps_get(char *buffer, const struct kernel_param *kp)
{
 unsigned long cap_mask = *(unsigned long *)kp->arg;

 cap_mask &= ~HFI1_CAP_LOCKED_SMASK;
 cap_mask |= ((cap_mask & HFI1_CAP_K2U) << HFI1_CAP_USER_SHIFT);

 return scnprintf(buffer, PAGE_SIZE, "0x%lx", cap_mask);
}
