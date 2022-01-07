
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct panfrost_job {int done_fence; struct panfrost_device* pfdev; } ;
struct panfrost_device {int reset_lock; TYPE_2__* js; int ** jobs; int dev; } ;
struct drm_sched_job {int dummy; } ;
struct drm_gpu_scheduler {int work_tdr; } ;
struct TYPE_4__ {TYPE_1__* queue; int job_lock; } ;
struct TYPE_3__ {struct drm_gpu_scheduler sched; } ;


 int JS_CONFIG (int) ;
 int JS_HEAD_LO (int) ;
 int JS_STATUS (int) ;
 int JS_TAIL_LO (int) ;
 int NUM_JOB_SLOTS ;
 int cancel_delayed_work_sync (int *) ;
 int dev_err (int ,char*,int,int ,int ,int ,int ,struct drm_sched_job*) ;
 scalar_t__ dma_fence_is_signaled (int ) ;
 int drm_sched_increase_karma (struct drm_sched_job*) ;
 int drm_sched_resubmit_jobs (struct drm_gpu_scheduler*) ;
 int drm_sched_start (struct drm_gpu_scheduler*,int) ;
 int drm_sched_stop (struct drm_gpu_scheduler*,struct drm_sched_job*) ;
 int job_read (struct panfrost_device*,int ) ;
 int mutex_trylock (int *) ;
 int mutex_unlock (int *) ;
 int panfrost_devfreq_record_transition (struct panfrost_device*,int) ;
 int panfrost_device_reset (struct panfrost_device*) ;
 int panfrost_job_get_slot (struct panfrost_job*) ;
 int pm_runtime_put_noidle (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct panfrost_job* to_panfrost_job (struct drm_sched_job*) ;

__attribute__((used)) static void panfrost_job_timedout(struct drm_sched_job *sched_job)
{
 struct panfrost_job *job = to_panfrost_job(sched_job);
 struct panfrost_device *pfdev = job->pfdev;
 int js = panfrost_job_get_slot(job);
 unsigned long flags;
 int i;





 if (dma_fence_is_signaled(job->done_fence))
  return;

 dev_err(pfdev->dev, "gpu sched timeout, js=%d, config=0x%x, status=0x%x, head=0x%x, tail=0x%x, sched_job=%p",
  js,
  job_read(pfdev, JS_CONFIG(js)),
  job_read(pfdev, JS_STATUS(js)),
  job_read(pfdev, JS_HEAD_LO(js)),
  job_read(pfdev, JS_TAIL_LO(js)),
  sched_job);

 if (!mutex_trylock(&pfdev->reset_lock))
  return;

 for (i = 0; i < NUM_JOB_SLOTS; i++) {
  struct drm_gpu_scheduler *sched = &pfdev->js->queue[i].sched;

  drm_sched_stop(sched, sched_job);
  if (js != i)

   cancel_delayed_work_sync(&sched->work_tdr);
 }

 drm_sched_increase_karma(sched_job);

 spin_lock_irqsave(&pfdev->js->job_lock, flags);
 for (i = 0; i < NUM_JOB_SLOTS; i++) {
  if (pfdev->jobs[i]) {
   pm_runtime_put_noidle(pfdev->dev);
   pfdev->jobs[i] = ((void*)0);
  }
 }
 spin_unlock_irqrestore(&pfdev->js->job_lock, flags);



 panfrost_devfreq_record_transition(pfdev, js);
 panfrost_device_reset(pfdev);

 for (i = 0; i < NUM_JOB_SLOTS; i++)
  drm_sched_resubmit_jobs(&pfdev->js->queue[i].sched);


 for (i = 0; i < NUM_JOB_SLOTS; i++)
  drm_sched_start(&pfdev->js->queue[i].sched, 1);

 mutex_unlock(&pfdev->reset_lock);
}
