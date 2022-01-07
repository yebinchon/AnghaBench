
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct host1x_syncpt {int id; struct host1x* host; } ;
struct host1x_channel {int id; } ;
struct host1x {int hv_regs; } ;


 int HOST1X_SYNC_SYNCPT_CH_APP (int ) ;
 int HOST1X_SYNC_SYNCPT_CH_APP_CH (int) ;
 int host1x_sync_writel (struct host1x*,int ,int ) ;

__attribute__((used)) static void syncpt_assign_to_channel(struct host1x_syncpt *sp,
      struct host1x_channel *ch)
{
}
