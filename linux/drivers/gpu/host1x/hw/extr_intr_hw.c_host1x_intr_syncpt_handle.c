
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int work; } ;
struct host1x_syncpt {unsigned int id; TYPE_1__ intr; struct host1x* host; } ;
struct host1x {int dummy; } ;


 int BIT (unsigned int) ;
 int HOST1X_SYNC_SYNCPT_THRESH_CPU0_INT_STATUS (unsigned int) ;
 int HOST1X_SYNC_SYNCPT_THRESH_INT_DISABLE (unsigned int) ;
 int host1x_sync_writel (struct host1x*,int ,int ) ;
 int schedule_work (int *) ;

__attribute__((used)) static void host1x_intr_syncpt_handle(struct host1x_syncpt *syncpt)
{
 unsigned int id = syncpt->id;
 struct host1x *host = syncpt->host;

 host1x_sync_writel(host, BIT(id % 32),
  HOST1X_SYNC_SYNCPT_THRESH_INT_DISABLE(id / 32));
 host1x_sync_writel(host, BIT(id % 32),
  HOST1X_SYNC_SYNCPT_THRESH_CPU0_INT_STATUS(id / 32));

 schedule_work(&syncpt->intr.work);
}
