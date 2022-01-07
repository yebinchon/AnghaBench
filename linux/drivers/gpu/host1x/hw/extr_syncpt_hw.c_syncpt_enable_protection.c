
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct host1x {int hv_regs; } ;


 int HOST1X_HV_SYNCPT_PROT_EN ;
 int HOST1X_HV_SYNCPT_PROT_EN_CH_EN ;
 int host1x_hypervisor_writel (struct host1x*,int ,int ) ;

__attribute__((used)) static void syncpt_enable_protection(struct host1x *host)
{







}
