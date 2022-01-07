
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct host1x {int dummy; } ;


 int HOST1X_SYNC_SYNCPT_INT_THRESH (unsigned int) ;
 int host1x_sync_writel (struct host1x*,int ,int ) ;

__attribute__((used)) static void _host1x_intr_set_syncpt_threshold(struct host1x *host,
           unsigned int id,
           u32 thresh)
{
 host1x_sync_writel(host, thresh, HOST1X_SYNC_SYNCPT_INT_THRESH(id));
}
