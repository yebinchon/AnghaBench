
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct cc_drvdata {int dummy; } ;


 scalar_t__ cc_req_queue_suspended (struct cc_drvdata*) ;
 struct cc_drvdata* dev_get_drvdata (struct device*) ;
 int pm_runtime_get_noresume (struct device*) ;
 int pm_runtime_get_sync (struct device*) ;

int cc_pm_get(struct device *dev)
{
 int rc = 0;
 struct cc_drvdata *drvdata = dev_get_drvdata(dev);

 if (cc_req_queue_suspended(drvdata))
  rc = pm_runtime_get_sync(dev);
 else
  pm_runtime_get_noresume(dev);

 return rc;
}
