
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct host1x_channel {int id; } ;
struct host1x {int hv_regs; } ;


 int BIT (int) ;
 int HOST1X_CHANNEL_CHANNELCTRL ;
 int HOST1X_CHANNEL_CHANNELCTRL_KERNEL_FILTER_GBUFFER (int) ;
 int HOST1X_HV_CH_KERNEL_FILTER_GBUFFER (int) ;
 int host1x_ch_writel (struct host1x_channel*,int ,int ) ;
 int host1x_hypervisor_readl (struct host1x*,int ) ;
 int host1x_hypervisor_writel (struct host1x*,int ,int ) ;

__attribute__((used)) static void enable_gather_filter(struct host1x *host,
     struct host1x_channel *ch)
{
}
