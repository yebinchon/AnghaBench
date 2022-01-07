
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct host1x {int dummy; } ;


 int HOST1X_SYNC_CTXSW_TIMEOUT_CFG ;
 int HOST1X_SYNC_IP_BUSY_TIMEOUT ;
 int HOST1X_SYNC_USEC_CLK ;
 int host1x_sync_writel (struct host1x*,int,int ) ;

__attribute__((used)) static void intr_hw_init(struct host1x *host, u32 cpm)
{


 host1x_sync_writel(host, 0, HOST1X_SYNC_IP_BUSY_TIMEOUT);





 host1x_sync_writel(host, 0xff, HOST1X_SYNC_CTXSW_TIMEOUT_CFG);


 host1x_sync_writel(host, cpm, HOST1X_SYNC_USEC_CLK);

}
