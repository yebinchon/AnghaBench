
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dss_device {int dummy; } ;
struct device {int dummy; } ;


 struct dss_device* dev_get_drvdata (struct device*) ;
 int dss_save_context (struct dss_device*) ;
 int dss_set_min_bus_tput (struct device*,int ) ;
 int pinctrl_pm_select_sleep_state (struct device*) ;

__attribute__((used)) static int dss_runtime_suspend(struct device *dev)
{
 struct dss_device *dss = dev_get_drvdata(dev);

 dss_save_context(dss);
 dss_set_min_bus_tput(dev, 0);

 pinctrl_pm_select_sleep_state(dev);

 return 0;
}
