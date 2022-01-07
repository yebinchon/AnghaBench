
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tmc_drvdata {scalar_t__ mode; int pid; int spinlock; scalar_t__ perf_buf; } ;
struct perf_output_handle {int head; } ;
struct etr_perf_buffer {int pid; scalar_t__ etr_buf; int head; } ;
struct TYPE_2__ {int parent; } ;
struct coresight_device {int refcnt; TYPE_1__ dev; } ;
typedef int pid_t ;


 scalar_t__ CS_MODE_PERF ;
 scalar_t__ CS_MODE_SYSFS ;
 int EBUSY ;
 int EINVAL ;
 int PERF_IDX2OFF (int ,struct etr_perf_buffer*) ;
 scalar_t__ WARN_ON (int) ;
 int atomic_inc (int ) ;
 struct tmc_drvdata* dev_get_drvdata (int ) ;
 struct etr_perf_buffer* etm_perf_sink_config (struct perf_output_handle*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tmc_etr_enable_hw (struct tmc_drvdata*,scalar_t__) ;

__attribute__((used)) static int tmc_enable_etr_sink_perf(struct coresight_device *csdev, void *data)
{
 int rc = 0;
 pid_t pid;
 unsigned long flags;
 struct tmc_drvdata *drvdata = dev_get_drvdata(csdev->dev.parent);
 struct perf_output_handle *handle = data;
 struct etr_perf_buffer *etr_perf = etm_perf_sink_config(handle);

 spin_lock_irqsave(&drvdata->spinlock, flags);

 if (drvdata->mode == CS_MODE_SYSFS) {
  rc = -EBUSY;
  goto unlock_out;
 }

 if (WARN_ON(!etr_perf || !etr_perf->etr_buf)) {
  rc = -EINVAL;
  goto unlock_out;
 }


 pid = etr_perf->pid;


 if (drvdata->pid != -1 && drvdata->pid != pid) {
  rc = -EBUSY;
  goto unlock_out;
 }

 etr_perf->head = PERF_IDX2OFF(handle->head, etr_perf);





 if (drvdata->pid == pid) {
  atomic_inc(csdev->refcnt);
  goto unlock_out;
 }

 rc = tmc_etr_enable_hw(drvdata, etr_perf->etr_buf);
 if (!rc) {

  drvdata->pid = pid;
  drvdata->mode = CS_MODE_PERF;
  drvdata->perf_buf = etr_perf->etr_buf;
  atomic_inc(csdev->refcnt);
 }

unlock_out:
 spin_unlock_irqrestore(&drvdata->spinlock, flags);
 return rc;
}
