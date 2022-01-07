
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct host1x_job {TYPE_3__* channel; int syncpt_id; scalar_t__ timeout; } ;
struct TYPE_5__ {int pos; } ;
struct TYPE_4__ {int initialized; } ;
struct host1x_cdma {TYPE_2__ push_buffer; int first_get; scalar_t__ slots_used; scalar_t__ slots_free; int running; int lock; TYPE_1__ timeout; } ;
struct host1x {int dummy; } ;
struct TYPE_6__ {int dev; } ;


 struct host1x* cdma_to_host1x (struct host1x_cdma*) ;
 int dev_name (int ) ;
 int host1x_hw_cdma_start (struct host1x*,struct host1x_cdma*) ;
 int host1x_hw_cdma_timeout_init (struct host1x*,struct host1x_cdma*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int trace_host1x_cdma_begin (int ) ;

int host1x_cdma_begin(struct host1x_cdma *cdma, struct host1x_job *job)
{
 struct host1x *host1x = cdma_to_host1x(cdma);

 mutex_lock(&cdma->lock);

 if (job->timeout) {

  if (!cdma->timeout.initialized) {
   int err;

   err = host1x_hw_cdma_timeout_init(host1x, cdma,
         job->syncpt_id);
   if (err) {
    mutex_unlock(&cdma->lock);
    return err;
   }
  }
 }

 if (!cdma->running)
  host1x_hw_cdma_start(host1x, cdma);

 cdma->slots_free = 0;
 cdma->slots_used = 0;
 cdma->first_get = cdma->push_buffer.pos;

 trace_host1x_cdma_begin(dev_name(job->channel->dev));
 return 0;
}
