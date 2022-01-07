
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct cc_drvdata {int dummy; } ;


 int EBUSY ;
 int cc_req_queue_suspended (struct cc_drvdata*) ;
 int dev_err (struct device*,char*) ;
 struct cc_drvdata* dev_get_drvdata (struct device*) ;
 int pm_runtime_mark_last_busy (struct device*) ;
 int pm_runtime_put_autosuspend (struct device*) ;

int cc_pm_put_suspend(struct device *dev)
{
 int rc = 0;
 struct cc_drvdata *drvdata = dev_get_drvdata(dev);

 if (!cc_req_queue_suspended(drvdata)) {
  pm_runtime_mark_last_busy(dev);
  rc = pm_runtime_put_autosuspend(dev);
 } else {

  dev_err(dev, "request to suspend already suspended queue");
  rc = -EBUSY;
 }
 return rc;
}
