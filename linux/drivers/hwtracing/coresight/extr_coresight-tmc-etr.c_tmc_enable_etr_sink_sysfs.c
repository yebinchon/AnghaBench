
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tmc_drvdata {scalar_t__ size; scalar_t__ mode; int spinlock; struct etr_buf* sysfs_buf; scalar_t__ reading; } ;
struct etr_buf {scalar_t__ size; } ;
struct TYPE_2__ {int parent; } ;
struct coresight_device {TYPE_1__ dev; int refcnt; } ;


 scalar_t__ CS_MODE_PERF ;
 scalar_t__ CS_MODE_SYSFS ;
 int EBUSY ;
 scalar_t__ IS_ERR (struct etr_buf*) ;
 int PTR_ERR (struct etr_buf*) ;
 struct etr_buf* READ_ONCE (struct etr_buf*) ;
 int atomic_inc (int ) ;
 int dev_dbg (TYPE_1__*,char*) ;
 struct tmc_drvdata* dev_get_drvdata (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tmc_etr_enable_hw (struct tmc_drvdata*,struct etr_buf*) ;
 int tmc_etr_free_sysfs_buf (struct etr_buf*) ;
 struct etr_buf* tmc_etr_setup_sysfs_buf (struct tmc_drvdata*) ;

__attribute__((used)) static int tmc_enable_etr_sink_sysfs(struct coresight_device *csdev)
{
 int ret = 0;
 unsigned long flags;
 struct tmc_drvdata *drvdata = dev_get_drvdata(csdev->dev.parent);
 struct etr_buf *sysfs_buf = ((void*)0), *new_buf = ((void*)0), *free_buf = ((void*)0);
 spin_lock_irqsave(&drvdata->spinlock, flags);
 sysfs_buf = READ_ONCE(drvdata->sysfs_buf);
 if (!sysfs_buf || (sysfs_buf->size != drvdata->size)) {
  spin_unlock_irqrestore(&drvdata->spinlock, flags);


  free_buf = new_buf = tmc_etr_setup_sysfs_buf(drvdata);
  if (IS_ERR(new_buf))
   return PTR_ERR(new_buf);


  spin_lock_irqsave(&drvdata->spinlock, flags);
 }

 if (drvdata->reading || drvdata->mode == CS_MODE_PERF) {
  ret = -EBUSY;
  goto out;
 }






 if (drvdata->mode == CS_MODE_SYSFS) {
  atomic_inc(csdev->refcnt);
  goto out;
 }





 sysfs_buf = READ_ONCE(drvdata->sysfs_buf);
 if (!sysfs_buf || (new_buf && sysfs_buf->size != new_buf->size)) {
  free_buf = sysfs_buf;
  drvdata->sysfs_buf = new_buf;
 }

 ret = tmc_etr_enable_hw(drvdata, drvdata->sysfs_buf);
 if (!ret) {
  drvdata->mode = CS_MODE_SYSFS;
  atomic_inc(csdev->refcnt);
 }
out:
 spin_unlock_irqrestore(&drvdata->spinlock, flags);


 if (free_buf)
  tmc_etr_free_sysfs_buf(free_buf);

 if (!ret)
  dev_dbg(&csdev->dev, "TMC-ETR enabled\n");

 return ret;
}
