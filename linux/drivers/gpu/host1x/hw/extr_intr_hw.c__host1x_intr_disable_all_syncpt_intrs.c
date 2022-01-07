
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct host1x {TYPE_1__* info; } ;
struct TYPE_2__ {int nb_pts; } ;


 unsigned int DIV_ROUND_UP (int ,int) ;
 int HOST1X_SYNC_SYNCPT_THRESH_CPU0_INT_STATUS (unsigned int) ;
 int HOST1X_SYNC_SYNCPT_THRESH_INT_DISABLE (unsigned int) ;
 int host1x_sync_writel (struct host1x*,int,int ) ;

__attribute__((used)) static void _host1x_intr_disable_all_syncpt_intrs(struct host1x *host)
{
 unsigned int i;

 for (i = 0; i < DIV_ROUND_UP(host->info->nb_pts, 32); ++i) {
  host1x_sync_writel(host, 0xffffffffu,
   HOST1X_SYNC_SYNCPT_THRESH_INT_DISABLE(i));
  host1x_sync_writel(host, 0xffffffffu,
   HOST1X_SYNC_SYNCPT_THRESH_CPU0_INT_STATUS(i));
 }
}
