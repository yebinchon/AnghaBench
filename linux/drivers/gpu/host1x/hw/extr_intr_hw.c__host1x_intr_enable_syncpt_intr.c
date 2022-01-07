
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct host1x {int dummy; } ;


 int BIT (unsigned int) ;
 int HOST1X_SYNC_SYNCPT_THRESH_INT_ENABLE_CPU0 (unsigned int) ;
 int host1x_sync_writel (struct host1x*,int ,int ) ;

__attribute__((used)) static void _host1x_intr_enable_syncpt_intr(struct host1x *host,
         unsigned int id)
{
 host1x_sync_writel(host, BIT(id % 32),
  HOST1X_SYNC_SYNCPT_THRESH_INT_ENABLE_CPU0(id / 32));
}
