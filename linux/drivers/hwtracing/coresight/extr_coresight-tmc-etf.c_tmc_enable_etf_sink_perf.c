
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tmc_drvdata {scalar_t__ mode; int pid; int spinlock; scalar_t__ reading; } ;
struct perf_output_handle {TYPE_2__* event; } ;
struct TYPE_3__ {int parent; } ;
struct coresight_device {int refcnt; TYPE_1__ dev; } ;
typedef int pid_t ;
struct TYPE_4__ {int owner; } ;


 scalar_t__ CS_MODE_PERF ;
 scalar_t__ CS_MODE_SYSFS ;
 int EBUSY ;
 int EINVAL ;
 int atomic_inc (int ) ;
 struct tmc_drvdata* dev_get_drvdata (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int task_pid_nr (int ) ;
 int tmc_etb_enable_hw (struct tmc_drvdata*) ;
 int tmc_set_etf_buffer (struct coresight_device*,struct perf_output_handle*) ;

__attribute__((used)) static int tmc_enable_etf_sink_perf(struct coresight_device *csdev, void *data)
{
 int ret = 0;
 pid_t pid;
 unsigned long flags;
 struct tmc_drvdata *drvdata = dev_get_drvdata(csdev->dev.parent);
 struct perf_output_handle *handle = data;

 spin_lock_irqsave(&drvdata->spinlock, flags);
 do {
  ret = -EINVAL;
  if (drvdata->reading)
   break;




  if (drvdata->mode == CS_MODE_SYSFS) {
   ret = -EBUSY;
   break;
  }


  pid = task_pid_nr(handle->event->owner);

  if (drvdata->pid != -1 && drvdata->pid != pid) {
   ret = -EBUSY;
   break;
  }

  ret = tmc_set_etf_buffer(csdev, handle);
  if (ret)
   break;





  if (drvdata->pid == pid) {
   atomic_inc(csdev->refcnt);
   break;
  }

  ret = tmc_etb_enable_hw(drvdata);
  if (!ret) {

   drvdata->pid = pid;
   drvdata->mode = CS_MODE_PERF;
   atomic_inc(csdev->refcnt);
  }
 } while (0);
 spin_unlock_irqrestore(&drvdata->spinlock, flags);

 return ret;
}
