
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct cc_drvdata {int dummy; } ;


 int CC_SUSPEND_TIMEOUT ;
 struct device* drvdata_to_dev (struct cc_drvdata*) ;
 int pm_runtime_set_active (struct device*) ;
 int pm_runtime_set_autosuspend_delay (struct device*,int ) ;
 int pm_runtime_use_autosuspend (struct device*) ;

int cc_pm_init(struct cc_drvdata *drvdata)
{
 struct device *dev = drvdata_to_dev(drvdata);


 pm_runtime_set_autosuspend_delay(dev, CC_SUSPEND_TIMEOUT);
 pm_runtime_use_autosuspend(dev);

 return pm_runtime_set_active(dev);
}
