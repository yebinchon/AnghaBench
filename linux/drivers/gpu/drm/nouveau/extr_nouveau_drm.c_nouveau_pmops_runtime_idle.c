
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int EBUSY ;
 int nouveau_pmops_runtime () ;
 int pm_runtime_autosuspend (struct device*) ;
 int pm_runtime_forbid (struct device*) ;
 int pm_runtime_mark_last_busy (struct device*) ;

__attribute__((used)) static int
nouveau_pmops_runtime_idle(struct device *dev)
{
 if (!nouveau_pmops_runtime()) {
  pm_runtime_forbid(dev);
  return -EBUSY;
 }

 pm_runtime_mark_last_busy(dev);
 pm_runtime_autosuspend(dev);

 return 1;
}
