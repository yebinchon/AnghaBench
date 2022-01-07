
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dss_device {int dummy; } ;
struct device {int dummy; } ;


 struct dss_device* dev_get_drvdata (struct device*) ;
 int dss_restore_context (struct dss_device*) ;
 int dss_set_min_bus_tput (struct device*,int) ;
 int pinctrl_pm_select_default_state (struct device*) ;

__attribute__((used)) static int dss_runtime_resume(struct device *dev)
{
 struct dss_device *dss = dev_get_drvdata(dev);
 int r;

 pinctrl_pm_select_default_state(dev);
 r = dss_set_min_bus_tput(dev, 1000000000);
 if (r)
  return r;

 dss_restore_context(dss);
 return 0;
}
