
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct host1x_syncpt {int id; int base_val; struct host1x* host; } ;
struct host1x {int dummy; } ;


 int HOST1X_SYNC_SYNCPT_BASE (int ) ;
 int host1x_sync_writel (struct host1x*,int ,int ) ;

__attribute__((used)) static void syncpt_restore_wait_base(struct host1x_syncpt *sp)
{

 struct host1x *host = sp->host;

 host1x_sync_writel(host, sp->base_val,
      HOST1X_SYNC_SYNCPT_BASE(sp->id));

}
