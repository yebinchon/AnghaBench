
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct host1x_job {TYPE_1__* channel; scalar_t__ timeout; int list; int num_slots; int first_get; } ;
struct host1x_cdma {int lock; int sync_queue; int slots_used; int first_get; } ;
struct host1x {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int cdma_start_timer_locked (struct host1x_cdma*,struct host1x_job*) ;
 struct host1x* cdma_to_host1x (struct host1x_cdma*) ;
 int dev_name (int ) ;
 int host1x_hw_cdma_flush (struct host1x*,struct host1x_cdma*) ;
 int host1x_job_get (struct host1x_job*) ;
 int list_add_tail (int *,int *) ;
 int list_empty (int *) ;
 int mutex_unlock (int *) ;
 int trace_host1x_cdma_end (int ) ;

void host1x_cdma_end(struct host1x_cdma *cdma,
       struct host1x_job *job)
{
 struct host1x *host1x = cdma_to_host1x(cdma);
 bool idle = list_empty(&cdma->sync_queue);

 host1x_hw_cdma_flush(host1x, cdma);

 job->first_get = cdma->first_get;
 job->num_slots = cdma->slots_used;
 host1x_job_get(job);
 list_add_tail(&job->list, &cdma->sync_queue);


 if (job->timeout && idle)
  cdma_start_timer_locked(cdma, job);

 trace_host1x_cdma_end(dev_name(job->channel->dev));
 mutex_unlock(&cdma->lock);
}
