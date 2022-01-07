
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct panfrost_job {int jc; int flush_id; int requirements; TYPE_1__* file_priv; struct panfrost_device* pfdev; } ;
struct panfrost_device {int dev; } ;
struct TYPE_2__ {int mmu; } ;


 int HW_FEATURE_FLUSH_REDUCTION ;
 int HW_ISSUE_10649 ;
 int JS_COMMAND_NEXT (int) ;
 int JS_COMMAND_START ;
 int JS_CONFIG_ENABLE_FLUSH_REDUCTION ;
 int JS_CONFIG_END_FLUSH_CLEAN_INVALIDATE ;
 int JS_CONFIG_NEXT (int) ;
 int JS_CONFIG_START_FLUSH_CLEAN_INVALIDATE ;
 int JS_CONFIG_START_MMU ;
 int JS_CONFIG_THREAD_PRI (int) ;
 int JS_FLUSH_ID_NEXT (int) ;
 int JS_HEAD_NEXT_HI (int) ;
 int JS_HEAD_NEXT_LO (int) ;
 scalar_t__ WARN_ON (int ) ;
 int dev_dbg (int ,char*,struct panfrost_job*,int,int) ;
 int job_read (struct panfrost_device*,int ) ;
 int job_write (struct panfrost_device*,int ,int) ;
 int panfrost_devfreq_record_transition (struct panfrost_device*,int) ;
 scalar_t__ panfrost_has_hw_feature (struct panfrost_device*,int ) ;
 scalar_t__ panfrost_has_hw_issue (struct panfrost_device*,int ) ;
 int panfrost_job_write_affinity (struct panfrost_device*,int ,int) ;
 int panfrost_mmu_as_get (struct panfrost_device*,int *) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put_sync_autosuspend (int ) ;

__attribute__((used)) static void panfrost_job_hw_submit(struct panfrost_job *job, int js)
{
 struct panfrost_device *pfdev = job->pfdev;
 u32 cfg;
 u64 jc_head = job->jc;
 int ret;

 ret = pm_runtime_get_sync(pfdev->dev);
 if (ret < 0)
  return;

 if (WARN_ON(job_read(pfdev, JS_COMMAND_NEXT(js)))) {
  pm_runtime_put_sync_autosuspend(pfdev->dev);
  return;
 }

 cfg = panfrost_mmu_as_get(pfdev, &job->file_priv->mmu);

 panfrost_devfreq_record_transition(pfdev, js);

 job_write(pfdev, JS_HEAD_NEXT_LO(js), jc_head & 0xFFFFFFFF);
 job_write(pfdev, JS_HEAD_NEXT_HI(js), jc_head >> 32);

 panfrost_job_write_affinity(pfdev, job->requirements, js);



 cfg |= JS_CONFIG_THREAD_PRI(8) |
  JS_CONFIG_START_FLUSH_CLEAN_INVALIDATE |
  JS_CONFIG_END_FLUSH_CLEAN_INVALIDATE;

 if (panfrost_has_hw_feature(pfdev, HW_FEATURE_FLUSH_REDUCTION))
  cfg |= JS_CONFIG_ENABLE_FLUSH_REDUCTION;

 if (panfrost_has_hw_issue(pfdev, HW_ISSUE_10649))
  cfg |= JS_CONFIG_START_MMU;

 job_write(pfdev, JS_CONFIG_NEXT(js), cfg);

 if (panfrost_has_hw_feature(pfdev, HW_FEATURE_FLUSH_REDUCTION))
  job_write(pfdev, JS_FLUSH_ID_NEXT(js), job->flush_id);


 dev_dbg(pfdev->dev, "JS: Submitting atom %p to js[%d] with head=0x%llx",
    job, js, jc_head);

 job_write(pfdev, JS_COMMAND_NEXT(js), JS_COMMAND_START);
}
