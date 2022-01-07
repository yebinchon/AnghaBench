
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tmc_drvdata {char* buf; scalar_t__ mode; int spinlock; int size; scalar_t__ reading; } ;
struct TYPE_2__ {int parent; } ;
struct coresight_device {int refcnt; TYPE_1__ dev; } ;


 scalar_t__ CS_MODE_SYSFS ;
 int EBUSY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int atomic_inc (int ) ;
 struct tmc_drvdata* dev_get_drvdata (int ) ;
 int kfree (char*) ;
 char* kzalloc (int ,int ) ;
 int memset (char*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tmc_etb_enable_hw (struct tmc_drvdata*) ;

__attribute__((used)) static int tmc_enable_etf_sink_sysfs(struct coresight_device *csdev)
{
 int ret = 0;
 bool used = 0;
 char *buf = ((void*)0);
 unsigned long flags;
 struct tmc_drvdata *drvdata = dev_get_drvdata(csdev->dev.parent);





 spin_lock_irqsave(&drvdata->spinlock, flags);
 if (!drvdata->buf) {
  spin_unlock_irqrestore(&drvdata->spinlock, flags);


  buf = kzalloc(drvdata->size, GFP_KERNEL);
  if (!buf)
   return -ENOMEM;


  spin_lock_irqsave(&drvdata->spinlock, flags);
 }

 if (drvdata->reading) {
  ret = -EBUSY;
  goto out;
 }






 if (drvdata->mode == CS_MODE_SYSFS) {
  atomic_inc(csdev->refcnt);
  goto out;
 }
 if (drvdata->buf) {
  memset(drvdata->buf, 0, drvdata->size);
 } else {
  used = 1;
  drvdata->buf = buf;
 }

 ret = tmc_etb_enable_hw(drvdata);
 if (!ret) {
  drvdata->mode = CS_MODE_SYSFS;
  atomic_inc(csdev->refcnt);
 } else {

  used = 0;
 }
out:
 spin_unlock_irqrestore(&drvdata->spinlock, flags);


 if (!used)
  kfree(buf);

 return ret;
}
