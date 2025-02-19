
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct panfrost_job {int done_fence; TYPE_2__* file_priv; } ;
struct panfrost_device {TYPE_3__* js; int dev; struct panfrost_job** jobs; } ;
typedef int irqreturn_t ;
struct TYPE_6__ {int job_lock; TYPE_1__* queue; } ;
struct TYPE_5__ {int mmu; } ;
struct TYPE_4__ {int sched; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int JOB_INT_CLEAR ;
 int JOB_INT_MASK_DONE (int) ;
 int JOB_INT_MASK_ERR (int) ;
 int JOB_INT_STAT ;
 int JS_COMMAND_NEXT (int) ;
 int JS_COMMAND_NOP ;
 int JS_HEAD_LO (int) ;
 int JS_STATUS (int) ;
 int JS_TAIL_LO (int) ;
 int MK_JS_MASK (int) ;
 int dev_dbg (int ,char*,int) ;
 int dev_err (int ,char*,int,int ,int,int) ;
 int dma_fence_signal_locked (int ) ;
 int drm_sched_fault (int *) ;
 int job_read (struct panfrost_device*,int ) ;
 int job_write (struct panfrost_device*,int ,int) ;
 int panfrost_devfreq_record_transition (struct panfrost_device*,int) ;
 int panfrost_exception_name (struct panfrost_device*,int) ;
 int panfrost_mmu_as_put (struct panfrost_device*,int *) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t panfrost_job_irq_handler(int irq, void *data)
{
 struct panfrost_device *pfdev = data;
 u32 status = job_read(pfdev, JOB_INT_STAT);
 int j;

 dev_dbg(pfdev->dev, "jobslot irq status=%x\n", status);

 if (!status)
  return IRQ_NONE;

 pm_runtime_mark_last_busy(pfdev->dev);

 for (j = 0; status; j++) {
  u32 mask = MK_JS_MASK(j);

  if (!(status & mask))
   continue;

  job_write(pfdev, JOB_INT_CLEAR, mask);

  if (status & JOB_INT_MASK_ERR(j)) {
   job_write(pfdev, JS_COMMAND_NEXT(j), JS_COMMAND_NOP);

   dev_err(pfdev->dev, "js fault, js=%d, status=%s, head=0x%x, tail=0x%x",
    j,
    panfrost_exception_name(pfdev, job_read(pfdev, JS_STATUS(j))),
    job_read(pfdev, JS_HEAD_LO(j)),
    job_read(pfdev, JS_TAIL_LO(j)));

   drm_sched_fault(&pfdev->js->queue[j].sched);
  }

  if (status & JOB_INT_MASK_DONE(j)) {
   struct panfrost_job *job;

   spin_lock(&pfdev->js->job_lock);
   job = pfdev->jobs[j];

   if (job) {
    pfdev->jobs[j] = ((void*)0);

    panfrost_mmu_as_put(pfdev, &job->file_priv->mmu);
    panfrost_devfreq_record_transition(pfdev, j);

    dma_fence_signal_locked(job->done_fence);
    pm_runtime_put_autosuspend(pfdev->dev);
   }
   spin_unlock(&pfdev->js->job_lock);
  }

  status &= ~mask;
 }

 return IRQ_HANDLED;
}
