
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct host1x {scalar_t__ hv_regs; } ;


 int writel (scalar_t__,scalar_t__) ;

void host1x_hypervisor_writel(struct host1x *host1x, u32 v, u32 r)
{
 writel(v, host1x->hv_regs + r);
}
