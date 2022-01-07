
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct host1x_job {int timeout; int syncpt_end; int syncpt_id; scalar_t__ client; } ;
struct TYPE_2__ {int wq; int start_ktime; int syncpt_val; int syncpt; scalar_t__ client; } ;
struct host1x_cdma {TYPE_1__ timeout; } ;
struct host1x {int dummy; } ;


 struct host1x* cdma_to_host1x (struct host1x_cdma*) ;
 int host1x_syncpt_get (struct host1x*,int ) ;
 int ktime_get () ;
 int msecs_to_jiffies (int ) ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static void cdma_start_timer_locked(struct host1x_cdma *cdma,
        struct host1x_job *job)
{
 struct host1x *host = cdma_to_host1x(cdma);

 if (cdma->timeout.client) {

  return;
 }

 cdma->timeout.client = job->client;
 cdma->timeout.syncpt = host1x_syncpt_get(host, job->syncpt_id);
 cdma->timeout.syncpt_val = job->syncpt_end;
 cdma->timeout.start_ktime = ktime_get();

 schedule_delayed_work(&cdma->timeout.wq,
         msecs_to_jiffies(job->timeout));
}
