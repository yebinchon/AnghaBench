
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct panfrost_job_slot {TYPE_1__* queue; int job_lock; } ;
struct panfrost_device {int dev; struct panfrost_job_slot* js; } ;
struct TYPE_2__ {int sched; int fence_context; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_SHARED ;
 int NUM_JOB_SLOTS ;
 int dev_err (int ,char*,...) ;
 struct panfrost_job_slot* devm_kzalloc (int ,int,int ) ;
 int devm_request_irq (int ,int,int ,int ,char*,struct panfrost_device*) ;
 int dma_fence_context_alloc (int) ;
 int drm_sched_fini (int *) ;
 int drm_sched_init (int *,int *,int,int ,int ,char*) ;
 int msecs_to_jiffies (int) ;
 int panfrost_job_enable_interrupts (struct panfrost_device*) ;
 int panfrost_job_irq_handler ;
 int panfrost_sched_ops ;
 int platform_get_irq_byname (int ,char*) ;
 int spin_lock_init (int *) ;
 int to_platform_device (int ) ;

int panfrost_job_init(struct panfrost_device *pfdev)
{
 struct panfrost_job_slot *js;
 int ret, j, irq;

 pfdev->js = js = devm_kzalloc(pfdev->dev, sizeof(*js), GFP_KERNEL);
 if (!js)
  return -ENOMEM;

 spin_lock_init(&js->job_lock);

 irq = platform_get_irq_byname(to_platform_device(pfdev->dev), "job");
 if (irq <= 0)
  return -ENODEV;

 ret = devm_request_irq(pfdev->dev, irq, panfrost_job_irq_handler,
          IRQF_SHARED, "job", pfdev);
 if (ret) {
  dev_err(pfdev->dev, "failed to request job irq");
  return ret;
 }

 for (j = 0; j < NUM_JOB_SLOTS; j++) {
  js->queue[j].fence_context = dma_fence_context_alloc(1);

  ret = drm_sched_init(&js->queue[j].sched,
         &panfrost_sched_ops,
         1, 0, msecs_to_jiffies(500),
         "pan_js");
  if (ret) {
   dev_err(pfdev->dev, "Failed to create scheduler: %d.", ret);
   goto err_sched;
  }
 }

 panfrost_job_enable_interrupts(pfdev);

 return 0;

err_sched:
 for (j--; j >= 0; j--)
  drm_sched_fini(&js->queue[j].sched);

 return ret;
}
