
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cdn_dp_device {scalar_t__ regs; } ;


 scalar_t__ SW_EVENTS0 ;
 int readl (scalar_t__) ;

u32 cdn_dp_get_event(struct cdn_dp_device *dp)
{
 return readl(dp->regs + SW_EVENTS0);
}
