
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int pm_runtime_suspended (struct device*) ;

bool cc_pm_is_dev_suspended(struct device *dev)
{

 return pm_runtime_suspended(dev);
}
