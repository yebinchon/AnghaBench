
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct host1x_syncpt {int id; struct host1x* host; } ;
struct host1x {int dummy; } ;


 int HOST1X_SYNC_SYNCPT (int ) ;
 int host1x_sync_writel (struct host1x*,int ,int ) ;
 int host1x_syncpt_read_min (struct host1x_syncpt*) ;

__attribute__((used)) static void syncpt_restore(struct host1x_syncpt *sp)
{
 u32 min = host1x_syncpt_read_min(sp);
 struct host1x *host = sp->host;

 host1x_sync_writel(host, min, HOST1X_SYNC_SYNCPT(sp->id));
}
