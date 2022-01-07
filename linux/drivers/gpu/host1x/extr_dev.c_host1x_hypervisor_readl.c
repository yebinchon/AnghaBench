
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct host1x {scalar_t__ hv_regs; } ;


 scalar_t__ readl (scalar_t__) ;

u32 host1x_hypervisor_readl(struct host1x *host1x, u32 r)
{
 return readl(host1x->hv_regs + r);
}
