
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct host1x_channel {int id; } ;
struct host1x {int dummy; } ;


 int BIT (int ) ;
 int HOST1X_CHANNEL_TEARDOWN ;
 int HOST1X_SYNC_CH_TEARDOWN ;
 int host1x_ch_writel (struct host1x_channel*,int,int ) ;
 int host1x_sync_writel (struct host1x*,int ,int ) ;

__attribute__((used)) static void cdma_hw_teardown(struct host1x *host, struct host1x_channel *ch)
{



 host1x_sync_writel(host, BIT(ch->id), HOST1X_SYNC_CH_TEARDOWN);

}
